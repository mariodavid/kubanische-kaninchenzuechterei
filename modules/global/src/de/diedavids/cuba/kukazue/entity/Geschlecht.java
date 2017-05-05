package de.diedavids.cuba.kukazue.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum Geschlecht implements EnumClass<String> {

    MAENNLICH("MAENNLICH"),
    WEIBLICH("WEIBLICH");

    private String id;

    Geschlecht(String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    @Nullable
    public static Geschlecht fromId(String id) {
        for (Geschlecht at : Geschlecht.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}