package com.poly.entity.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserRequestRegister {

    private String fullName;

    private String phoneNumber;

    private String email;

    private String password;

    private String confirmPassword;

    private boolean acceptTerm;

    private boolean acceptPromotion;

    @Override
    public String toString() {
        return "UserRequestRegister{" +
                "fullName='" + fullName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", acceptTerm=" + acceptTerm +
                ", acceptPromotion=" + acceptPromotion +
                '}';
    }
}
