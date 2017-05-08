create table KUKAZUE_SHOW (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITEL varchar(255),
    SHOW_DATUM date not null,
    --
    primary key (ID)
);
