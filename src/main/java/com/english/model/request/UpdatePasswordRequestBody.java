package com.english.model.request;

import javax.validation.constraints.NotBlank;

public class UpdatePasswordRequestBody
{
    @NotBlank(message = "Original password is required.")
    private String oldPassword;

    @NotBlank(message = "New password is required.")
    private String newPassword;

    public String getOldPassword()
    {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword)
    {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword()
    {
        return newPassword;
    }

    public void setNewPassword(String newPassword)
    {
        this.newPassword = newPassword;
    }
}
