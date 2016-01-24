# dbc-hackathon
DBC San Francisco January Hackathon
<%if @trip.cost = "high"%>
 <span class="transit-type">Uber -- $<%=leg.price%> <%=leg.time%></span>
  <%elsif @trip.cost = "medium"%>
  <span class="transit-type">Bus/Muni -- $<%=leg.price%> <%=leg.time%></span>
  <%else%>
  <span class="transit-type">Walk -- $Free -- <%=leg.time%></span>
   <%@legs.each do |leg|%>
  <%=leg%>

  <%end%>



      <% @start_loc = get_place_location(place[i].place_id) %>
    <% @end_loc = get_place_location(place[i+1].place_id) %>
    <%@time = @uclient.time_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])%>
<%@price =  @uclient.price_estimations(start_latitude: @start_loc[:latitude], start_longitude: @start_loc[:longitude], end_latitude: @end_loc[:latitude], end_longitude: @end_loc[:longitude])%>
<h1><%=@time%></h1>
<h1><%=@price%></h1>
<%i+=1%>