package com.english.model.request;

public class RoleQueryCondition extends QueryCondition
{
    private String name;

    private String key;

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getKey()
    {
        return key;
    }

    public void setKey(String key)
    {
        this.key = key;
    }
}