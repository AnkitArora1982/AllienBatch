<!DOCTYPE html>
<html>
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1" %> <%@ page isELIgnored="false" %> <%@ taglib
  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
  prefix="security" uri="http://www.springframework.org/security/tags" %>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Home Page of Travel Gig</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="./css/home.css" />
  </head>
  <body>
    <nav class="navbar navbar-dark bg-primary justify-content-between">
      <a class="navbar-brand font-bold h1" href="/">TravelGig</a>
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <security:authorize access="isAuthenticated()">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Welcome,
              <span id="username" class="font-weight-bold font-italic ml-1"
                ><security:authentication property="principal.username"
              /></span>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="/userProfile">User Profile</a>
              <a class="dropdown-item" href="/login?logout">Logout</a>
            </div>
          </security:authorize>
          <security:authorize access="isAnonymous()">
            <a href="/login" class="link-light text-white">Login</a>
          </security:authorize>
        </li>
      </ul>
    </nav>

    <div class="container mb-4">
      <div class="row border rounded mt-4 mb-4 p-4">
        <h3>Narrow your search results</h3>
        <div class="form-row">
          <div class="col-3">
            Hotel/City/State/Address
            <input
              class="form-control"
              type="text"
              id="searchLocation"
              name="searchLocation"
            />
          </div>
          <div class="col-2">
            No. Rooms:
            <input
              class="form-control"
              type="number"
              id="noRooms"
              name="noRooms"
            />
          </div>
          <div class="col-2">
            No. Guests:
            <input
              class="form-control"
              type="number"
              id="noGuests"
              name="noGuests"
            />
          </div>
          <div class="col">
            Check-In Date:
            <input type="date" id="checkInDate" name="checkInDate" />
          </div>
          <div class="col">
            Check-Out Date:
            <input type="date" id="checkOutDate" name="checkOutDate" />
          </div>
          <input
            class="btn-sm btn-primary"
            type="button"
            id="searchBtn"
            value="SEARCH"
          />
        </div>
      </div>

      <div class="row m-auto">
        <div class="col-3 border rounded mr-3">
          Star Rating:<br />
          <div class="form-check-inline">
            <label class="form-check-label">
              <input
                type="checkbox"
                class="star_rating form-check-input"
                id="1_star_rating"
                value="1"
              />1
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input
                type="checkbox"
                class="star_rating form-check-input"
                id="2_star_rating"
                value="2"
              />2
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input
                type="checkbox"
                class="star_rating form-check-input"
                id="3_star_rating"
                value="3"
              />3
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input
                type="checkbox"
                class="star_rating form-check-input"
                id="4_star_rating"
                value="4"
              />4
            </label>
          </div>
          <div class="form-check-inline">
            <label class="form-check-label">
              <input
                type="checkbox"
                class="star_rating form-check-input"
                id="5_star_rating"
                value="5"
              />5
            </label>
          </div>
          <br /><br />

          Range:
          <div class="slidecontainer">
            <input
              type="range"
              min="1"
              max="500"
              value="500"
              class="slider"
              id="priceRange"
            />
            <p>Price: $<span id="priceValue"></span></p>
          </div>

          <div class="form-check">
            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_parking"
              value="PARKING"
            />
            <label class="form-check-label" for="amenity_parking">Parking</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_checkin_checkout"
              value="CHECK-IN & CHECK-OUT TIMES"
            />
            <label class="form-check-label" for="amenity_checkin_checkout"
              >Check-In & Check-Out Times</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_breakfast"
              value="BREAKFAST"
            />
            <label class="form-check-label" for="amenity_breakfast"
              >Breakfast</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_bar_lounge"
              value="BAR OR LOUNGE"
            />
            <label class="form-check-label" for="amenity_bar_lounge"
              >Bar / Lounge</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_fitness_center"
              value="Gym"
            />
            <label class="form-check-label" for="amenity_fitness_center"
              >Gym</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_wifi"
              value="Wi-Fi"
            />
            <label class="form-check-label" for="amenity_fitness_center"
              >Wifi</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_spa"
              value="Spa"
            />
            <label class="form-check-label" for="amenity_fitness_center"
              >Spa</label
            ><br />

            <input
              type="checkbox"
              class="hotel_amenity form-check-input"
              id="amenity_pool"
              value="Swimming Pool"
            />
            <label class="form-check-label" for="amenity_fitness_center"
              >Swimming Pool</label
            ><br />
          </div>

          <input
            style="margin-top: 25px"
            class="btn btn-primary"
            type="button"
            id="filterBtn"
            value="FILTER"
          />
        </div>

        <div class="col-8 border rounded">
          <h4>List of Hotels:</h4>
          <table id="hotelTbl" class="table table-striped">
            <thead>
              <th>Name</th>
              <th>Price</th>
              <th>Rating</th>
              <th>Image</th>
            </thead>
            <tbody id="hotelTblBody"></tbody>
          </table>
        </div>
      </div>
    </div>

    <!-- Hotel Info Modal-->
    <div
      class="modal"
      id="hotelInfoModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="hotelModalLabel"
      aria-hidden="true"
    >
      <div
        class="modal-dialog modal-dialog-scrollable modal-lg"
        role="document"
      >
        <div class="modal-content">
          <div class="modal-body p-0">
            <div>
              <img
                alt="Hotel Image"
                id="hotelInfoModal_hotelImage"
                style="width: 60rem; height: 40rem; object-fit: cover"
              />
              <p
                id="hotelInfoModal_hotelName"
                class="text-center font-weight-bold h3 ml-4"
              ></p>
            </div>

            <div class="mx-4 my-2">
              <ul class="nav nav-fill nav-pills" id="myTabs" role="tablist">
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    id="description-tab"
                    data-toggle="tab"
                    href="#description"
                    role="tab"
                    aria-controls="description"
                    aria-selected="true"
                    >About</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    id="reviews-tab"
                    data-toggle="tab"
                    href="#reviews"
                    role="tab"
                    aria-controls="reviews"
                    aria-selected="false"
                    >Reviews</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    id="pricing-tab"
                    data-toggle="tab"
                    href="#pricing"
                    role="tab"
                    aria-controls="pricing"
                    aria-selected="false"
                    >Pricing</a
                  >
                </li>
              </ul>

              <div class="tab-content mt-2" id="myTabsContent">
                <div
                  class="tab-pane fade show active container text-center"
                  id="description"
                  role="tabpanel"
                  aria-labelledby="description-tab"
                >
                  <!-- Description content -->
                  <em id="hotelInfoModal_description"></em>
                  <hr />
                  <p>
                    <span style="font-weight: 600">Amenities:</span>
                    <em id="hotelInfoModal_amenities"></em>
                  </p>
                  <p>
                    <span style="font-weight: 600">Address:</span>
                    <em id="hotelInfoModal_address"></em>,
                    <em id="hotelInfoModal_city"></em>,
                    <em id="hotelInfoModal_state"></em>
                  </p>
                  <p>
                    <span style="font-weight: 600">Email:</span>
                    <em><a id="hotelInfoModal_email"></a></em>
                  </p>
                  <p>
                    <span style="font-weight: 600">Mobile:</span>
                    <em id="hotelInfoModal_mobile"></em>
                  </p>
                </div>
                <div
                  class="tab-pane fade"
                  id="reviews"
                  role="tabpanel"
                  aria-labelledby="reviews-tab"
                >
                  <!-- Reviews content -->
                  <p class="text-center">
                    <em>
                      This hotel has been booked
                      <span id="hotelInfoModal_timesBooked"></span> times by
                      guests, who have given it an average rating of
                      <span style="font-weight: 600">
                        <span id="hotelInfoModal_starRating"></span>/5
                        stars</span
                      >, based on
                      <span id="hotelInfoModal_reviewsCount"></span> reviews.
                    </em>
                  </p>
                  <hr />
                  <div>
                    <p style="font-weight: 600">Reviews:</p>
                    <ul
                      id="allReviews"
                      style="list-style-type: none"
                      class="p-0 m-0"
                    ></ul>
                  </div>
                </div>
                <div
                  class="tab-pane fade"
                  id="pricing"
                  role="tabpanel"
                  aria-labelledby="pricing-tab"
                >
                  <!-- Pricing Details -->
                  <div class="text-center">
                    <span class="mr-4">
                      <em style="font-weight: 600">Average Hotel Price: </em
                      >$<span id="hotelInfoModal_averagePrice"></span
                    ></span>
                    <span>
                      <em style="font-weight: 600">Hotel Discount:</em
                      ><span id="hotelInfoModal_discount"></span>%</span
                    >
                  </div>
                  <hr />
                  <table class="table table-bordered" id="hotelRoomPrices">
                    <thead>
                      <tr>
                        <th>Room Type</th>
                        <th>Price ($)</th>
                        <th>Discount</th>
                        <th>Description</th>
                        <th>Policies</th>
                        <th>Number of Rooms</th>
                      </tr>
                    </thead>
                    <tbody id="hotelInfo_roomPrices"></tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <input
              class="btn btn-searchHotelRooms btn-primary"
              type="button"
              id="hotelInfoModal_bookHotel"
              value="Book Hotel"
            />
            <button type="button" class="btn btn-danger" data-dismiss="modal">
              Close
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="hotelBookModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Select Hotel Room</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>

          <!-- Modal body -->
          <div class="modal-body">
            <div class="col">
              <input class="form-control" type="hidden" id="modal_hotelId" />
              Hotel Name:
              <input
                readonly="true"
                class="form-control"
                type="text"
                id="modal_hotelName"
              />
              No. Guests:
              <input class="form-control" type="number" id="modal_noGuests" />
              Check-In Date:
              <input class="form-control" type="date" id="modal_checkInDate" />
              Check-Out Date:
              <input class="form-control" type="date" id="modal_checkOutDate" />
              Room Type:
              <select class="form-control" id="select_roomTypes"></select>
              No. Rooms:
              <input class="form-control" type="number" id="modal_noRooms" />
            </div>
          </div>

          <!-- Modal footer -->
          <div class="modal-footer">
            <input
              class="btn btn-searchHotelRooms btn-primary"
              type="button"
              id="addGuests"
              value="Add Guests Info"
            />
            <button
              type="button"
              class="btn btn-danger"
              data-dismiss="modal"
              id="backToHotelDetails"
            >
              Back
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="guestsModal">
      <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Add Guests Info</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>

          <!-- Modal body -->
          <div class="modal-body">
            <input class="form-control" type="hidden" id="modal_hotelId" />
            <ul class="list-group" id="guests_infoList"></ul>
          </div>

          <!-- Modal footer -->
          <div class="modal-footer">
            <input
              class="btn btn-primary"
              type="button"
              id="bookHotel"
              value="Confirm Details"
            />
            <button type="button" class="btn btn-danger" id="backToConfirm">
              Edit Room Details
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Not In Use -->
    <div class="modal" id="hotelRoomsModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Are these details correct?</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>

          <!-- Modal body -->
          <div class="modal-body" id="hotelRooms_modalBody"></div>

          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">
              Close
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal" id="bookingHotelRoomModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Confirm Details</h4>
            <button type="button" class="close" data-dismiss="modal">
              &times;
            </button>
          </div>

          <!-- Modal body -->
          <div class="modal-body" id="bookingRoom_modalBody">
            <div class="col">
              <div>
                <input
                  class="form-control"
                  type="hidden"
                  id="booking_hotelId"
                />
              </div>
              <div>
                <input
                  class="form-control"
                  type="hidden"
                  id="booking_hotelRoomId"
                />
              </div>
              <div>
                Hotel Name:
                <input
                  readonly="true"
                  class="form-control"
                  type="text"
                  id="booking_hotelName"
                />
              </div>
              <div>
                Customer Mobile:
                <input
                  class="form-control"
                  type="text"
                  id="booking_customerMobile"
                />
              </div>
              <div id="noGuestsDiv">
                No. Guests:
                <input
                  readonly="true"
                  class="form-control"
                  type="number"
                  id="booking_noGuests"
                />
              </div>
              <div>
                No. Rooms:
                <input
                  readonly="true"
                  class="form-control"
                  type="number"
                  id="booking_noRooms"
                />
              </div>
              <div>
                Check-In Date:
                <input
                  readonly="true"
                  class="form-control"
                  type="text"
                  id="booking_checkInDate"
                />
              </div>
              <div>
                Check-Out Date:
                <input
                  readonly="true"
                  class="form-control"
                  type="text"
                  id="booking_checkOutDate"
                />
              </div>
              <div>
                Room Type:
                <input
                  readonly="true"
                  class="form-control"
                  type="text"
                  id="booking_roomType"
                />
              </div>

              <!-- <button class="btn btn-primary">Edit</button> -->
            </div>
          </div>

          <!-- Modal footer -->
          <div class="modal-footer">
            <div class="mr-auto font-weight-bold">
              <div>Discount: $ <span id="booking_discount"></span></div>
              <div>Total Price: $ <span id="booking_price"> </span></div>
            </div>

            <div>
              <button class="btn-confirm-booking btn btn-primary" id="book_now">
                Book Now
              </button>
              <button type="button" class="btn btn-danger" id="editDetails">
                Edit Details
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      var slider = document.getElementById("priceRange");
      var output = document.getElementById("priceValue");
      output.innerHTML = slider.value;
      slider.oninput = function () {
        output.innerHTML = this.value;
      };
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="./js/home.js"></script>
  </body>
</html>
