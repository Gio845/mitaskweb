<body id="page-top">
  <!-- Navigation-->
  <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Clarence Taylor</span>
      <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="plantilla/dist2/assets/img/profile.jpg" alt="..." /></span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Interests</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Awards</a></li>
      </ul>
    </div>
  </nav> -->
  <!-- Page Content-->
  <div class="container-fluid p-0">
    <!-- partial:index.partial.html -->
    <div class="p-5">
      <h2 class="mb-4">Full Calendar</h2>
      <div class="card">
        <div class="card-body p-0">
          <div id="calendar"></div>
        </div>
      </div>
    </div>

    <!-- calendar modal -->
    <div id="modal-view-event" class="modal modal-top fade calendar-modal">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-body">
            <h4 class="modal-title"><span class="event-icon"></span><span class="event-title"></span></h4>
            <div class="event-body"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <div id="modal-view-event-add" class="modal modal-top fade calendar-modal">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <form id="add-event">
            <div class="modal-body">
              <h4>Add Event Detail</h4>
              <div class="form-group">
                <label>Event name</label>
                <input type="text" class="form-control" name="ename">
              </div>
              <div class="form-group">
                <label>Event Date</label>
                <input type='text' class="datetimepicker form-control" name="edate">
              </div>
              <div class="form-group">
                <label>Event Description</label>
                <textarea class="form-control" name="edesc"></textarea>
              </div>
              <div class="form-group">
                <label>Event Color</label>
                <select class="form-control" name="ecolor">
                  <option value="fc-bg-default">fc-bg-default</option>
                  <option value="fc-bg-blue">fc-bg-blue</option>
                  <option value="fc-bg-lightgreen">fc-bg-lightgreen</option>
                  <option value="fc-bg-pinkred">fc-bg-pinkred</option>
                  <option value="fc-bg-deepskyblue">fc-bg-deepskyblue</option>
                </select>
              </div>
              <div class="form-group">
                <label>Event Icon</label>
                <select class="form-control" name="eicon">
                  <option value="circle">circle</option>
                  <option value="cog">cog</option>
                  <option value="group">group</option>
                  <option value="suitcase">suitcase</option>
                  <option value="calendar">calendar</option>
                </select>
              </div>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary">Save</button>
              <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>