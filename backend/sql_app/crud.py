from sqlalchemy.orm import Session

from . import models, schemas
from .auth import get_password_hash             


def get_user(db: Session, user_id: int):
    return db.query(models.User).filter(models.User.id == user_id).first()


def get_user_by_email(db: Session, email: str):
    return db.query(models.User).filter(models.User.email == email).first()


def get_users(db: Session, skip: int = 0, limit: int = 100):
    return db.query(models.User).offset(skip).limit(limit).all()


def create_user(db: Session, user: schemas.UserCreate):
    hashed_password = get_password_hash(user.password)
    db_user = models.User(email=user.email, full_name=user.full_name, hashed_password=hashed_password, role = user.role)
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user


def get_items(db: Session, skip: int = 0, limit: int = 100):
    return db.query(models.Item).offset(skip).limit(limit).all()


def create_user_item(db: Session, item: schemas.ItemCreate, user_id: int):
    db_item = models.Item(**item.dict(), owner_id=user_id)
    db.add(db_item)
    db.commit()
    db.refresh(db_item)
    return db_item

def create_user_entry(db: Session, entry: schemas.Entry, user_id: int):
    db_entry = models.Entry(**entry.dict(), owner_id=user_id)
    db.add(db_entry)
    db.commit()
    db.refresh(db_entry)
    return db_entry

def create_user_report(db: Session, report: schemas.Report, user_id: int):
    db_report = models.Report(**report.dict(), owner_id=user_id)
    db.add(db_report)
    db.commit()
    db.refresh(db_report)
    return db_report

def get_user_report(db: Session, user_id: int):
    return db.query(models.Report).filter(models.Report.owner_id == user_id).all()

def get_user_report_by_id(db: Session, report_id: int):
    return db.query(models.Report).filter(models.Report.id == report_id).first()

def delete_user(db: Session, user_id: int):
    db_user = db.query(models.User).filter(models.User.id == user_id).first()
    db.delete(db_user)
    db.commit()
    return db_user

def change_password(db: Session, user_id: int, new_password: str, old_password: str):
    db_user = db.query(models.User).filter(models.User.id == user_id).first()
    if db_user.hashed_password == get_password_hash(old_password):
        db_user.hashed_password = get_password_hash(new_password)
        db.add(db_user)
        db.commit()
        db.refresh(db_user)
    return db_user

def verify_email(db: Session, user_id: int):
    db_user = db.query(models.User).filter(models.User.id == user_id).first()
    db_user.is_active = True
    db.commit()
    return db_user

def create_client(db: Session, client: schemas.ClientBase, user_id: int):
    db_client = models.Client(**client.dict(),owner_id=user_id)
    db.add(db_client)
    db.commit()
    db.refresh(db_client)
    return db_client

def get_client_by_id(db:Session, client_id: int):
    return db.query(models.Client).filter(models.Client.id == client_id).first()

def get_clients(db:Session):
    return db.query(models.Client).all()

def delete_client(db:Session, client_id: int):
    db_client = db.query(models.Client).filter(models.Client.id == client_id).first()
    db.delete(db_client)
    db.commit()
    return db_client

def create_project(db:Session, project:schemas.ProjectBase, client_id: int):
    db_project = models.Project(**project.dict(),owner_id=client_id)
    db.add(db_project)
    db.commit()
    db.refresh(db_project)
    return db_project

def get_projects(db:Session, client_id: int):
    return db.query(models.Project).filter(models.Project.owner_id == client_id).all()

def get_project_by_id(db:Session, project_id: int):
    return db.query(models.Project).filter(models.Project.id == project_id).first()

def delete_project(db:Session, project_id: int):
    db_project = db.query(models.Project).filter(models.Project.id == project_id).first()
    db.delete(db_project)
    db.commit()
    return db_project

def create_grievance(db:Session, user_id: int, grievance: schemas.GrievanceBase):
    db_grievance = models.Grievance(owner_id=user_id)
    db.add(db_grievance)
    db.commit()
    db.refresh(db_grievance)
    return db_grievance

def get_user_reports(db:Session, user_id: int):
    db_user = db.query(models.User).filter(models.User.id == user_id).first()
    if(not db_user.role == 'admin'):
        return False
    return db.query(models.Report).filter(models.Report.owner_id == user_id).all()
def get_all_projects(db:Session):
    return db.query(models.Project).all()
