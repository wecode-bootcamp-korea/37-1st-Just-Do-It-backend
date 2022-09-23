const { userDao } = require('../models');

const signUp = async (userName, password, fullName, phoneNumber, address, birth, gender) => {

    //parseInt(gender)
    const today = new Date();
    const todayTime = today.getTime();
    const birthTime = new Date(birth);
    let age = Math.floor((todayTime - birthTime) / (1000 * 60 * 60 * 24 * 365));
    if (age < 15) {
        const err = new Error("만 14세 이하는 회원가입 불가")
        err.statusCode = 401;
        throw err
    }
    const idValidation = new RegExp(
        `^[a-zA-Z0-9_-]{6,99}$`
    );
    if (!idValidation.test(userName)) {
        const err = new Error(`ID_IS_NOT_VALID`);
        err.statusCode = 402;
        throw err;
    };

    const pwValidation = new RegExp(
        `^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*])(?=.{8,16})`
    );
    if (!pwValidation.test(password)) {
        const err = new Error(`PASSWORD_IS_NOT_VALID`);
        err.statusCode = 403;
        throw err;
    };

    const mobileValidation = new RegExp(
        `^[0-9]{2,3}[0-9]{3,4}[0-9]{4}`

    );
    if (!mobileValidation.test(phoneNumber)) {
        const err = new Error(`MOBILE_IS_NO_VALID`);
        err.statusCode = 404;
        throw err;
    }

    const checkUsername = await userDao.checkUsername(userName)
    if (checkUsername) {
        const err = new Error("already exists userid");
        err.statusCode = 405;
        throw err
    }

    return await userDao.signUp(userName, password, fullName, phoneNumber, address, birth, gender)

}


module.exports = {
    signUp,

}