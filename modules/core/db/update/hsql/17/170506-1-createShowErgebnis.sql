create table KUKAZUE_SHOW_ERGEBNIS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TIER_ID varchar(36) not null,
    PLATZIERUNG integer,
    TITEL varchar(255),
    SHOW_ID varchar(36) not null,
    --
    primary key (ID)
);
