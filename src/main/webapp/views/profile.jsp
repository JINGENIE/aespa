
<section class="user-dashboard page-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="list-inline dashboard-menu text-center">
          <li><a href="dashboard.html">Dashboard</a></li>
          <li><a href="order.html">Orders</a></li>
          <li><a href="address.html">Address</a></li>
          <li><a class="active"  href="profile-details.html">Profile Details</a></li>
        </ul>
        <div class="dashboard-wrapper dashboard-user-profile">
          <div class="media">
            <div class="pull-left text-center" href="#!">
              <img class="media-object user-img" src="images/avater.jpg" alt="Image">
              <a href="#x" class="btn btn-transparent mt-20">Change Image</a>
            </div>
            <div class="media-body">
    <c:forEach var="obj" items="${user}">
              <ul class="user-profile-list">
                <li><span>Full Name:</span>${obj.user_name}</li>
                <li><span>Country:</span>${obj.user_address}</li>
                <li><span>Email:</span>${obj.user_email}</li>
                <li><span>Phone:</span>${obj.user_contact}</li>
                <li><span>Date of Birth:</span${obj.user_birthday}</li>
              </ul>
    </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
