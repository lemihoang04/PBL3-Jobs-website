<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="./Assets/CSS/global_home.css?v=2" />
<link rel="stylesheet" href="./Assets/CSS/menu1.css?v=1" />
<header class="navigation">
         <div class="navigation-bar">
            <nav class="nav-bar">
              <nav class="home-navigation">
                <a href="home" style="text-decoration:none"><div class="home8">Home</div></a>
                <a href="listjob" style="text-decoration:none"><div class="home9">Find Job</div></a>
                <div class="home10">Customer Supports</div>
                
              </nav>
            </nav>
            <div class="frame-container">
              <div class="phonecall-parent">
                <img
                  class="phonecall-icon2"
                  loading="lazy"
                  alt=""
                  src="./public/phonecall.svg"
                />

                <div class="wrapper">
                  <div class="div14">0825700246</div>
                </div>
              </div>
              <div class="page-content">
                <div class="content-container1">
                  <div class="image-content">
                    <img
                      class="image-1-icon2"
                      loading="lazy"
                      alt=""
                      src="./public/image-1@2x.png"
                    />
                  </div>
                  <div class="english2">English</div>
                </div>
              </div>
            </div>
          </div>
        <div class="navigation1">
          <a href="home" style="text-decoration:none; color: inherit;" ><div class="logo">
            <img
              class="briefcase-1-icon"
              loading="lazy"
              alt=""
              src="./public/briefcase-1.svg"
            />

            <div class="job-find">Job Find</div>
          </div></a>
          <c:if test="${sessionScope.acc == null}">
          <div class="button">
            <a href="./login.jsp" style="text-decoration:none" class="button-button">
              <b class="primary">Sign in</b>
            </a>       
            <a href="./login_employer.jsp" style="text-decoration:none" class="button-button1">
              <b class="employer">employer</b>
              
            </a>  
          </div>
           </c:if>
           <c:if test="${sessionScope.acc != null}">
            <div class="button4">
              <div class="button5">
                <img
                  class="bellringing-icon"
                  loading="lazy"
                  alt=""
                  src="./public/bellringing.svg"
                />
			  </div>
			  <div class="icon-container">
                <img
                  class="notification-badge-icon"
                  loading="lazy"
                  alt=""
                  src="./public/user-avatar1.svg"
                />
                <div class="dropmenu" id="dropmenu">
        	<a href="userinform">Account</a>
        	<a href="logout">Log out</a>
    	</div>
              </div>
            </div>
              </c:if>
        </div>
      </header>
<script src="./Assets/JavaScript/dropmenu(acc).js?v=3"></script>