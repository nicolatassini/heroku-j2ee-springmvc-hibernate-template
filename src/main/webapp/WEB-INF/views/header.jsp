<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
#header{
    color:red;
}
#logo{
    color:red;
}

#user-info{
    color:red;
}
</style>
<div id = "header">
    <div id="logo">
    <img src="https://www.w3schools.com/images/lamp.jpg" alt="Lamp" width="32" height="32">
    </div>
    <div id="user-info">
        Hello ${userName}
    </div>
</div>


