$(document ).ready(function() {
    //alert( "ready!" );
    
    // To modify Propery as NotListed

    $('#listcheck').click(function () {

        var thisCheck = $(this);
        if (thisCheck.is(':checked'))
        {
            thisCheck.val('true'); 
        } 
        else 
        {
            thisCheck.val('false');            
        }

        alert(thisCheck.val());
    });


    //TO pOPULATE cOMMON seLECT tyPES

    $(".myPropertyType").on('click',function() {
        //alert( "ready!" );
        $("#mySelect").append('<option value=res_indhouse>Independent House </option>');
        
        $("#myLocation").empty();    
        $("#myLocation").append('<option value=NILL></option>');
        $("#myLocation").append('<option value=Hyderabad>Hyderabad</option>');
        $("#myLocation").append('<option value=Chennai>Chennai</option>');
        $("#myLocation").append('<option value=Banglore>Banglore</option>');
        $("#myLocation").append('<option value=Mumbai>Mumbai</option>');
        $("#myLocation").append('<option value=Delhi>Delhi</option>');
        $("#myLocation").append('<option value=Kolkata>Kolkata</option>');
        $("#myLocation").append('<option value=Other7>Other</option>');
        
        $("#myLocality").empty();    
        $("#myLocality").append('<option value=NILL></option>');
        $("#myLocality").append('<option value=Kukatpally>Kukatpally</option>');
        $("#myLocality").append('<option value=Hitech-City>Hitech-City</option>');
        $("#myLocality").append('<option value=AmeerPet>AmeerPet</option>');
        $("#myLocality").append('<option value=Guindy>Guindy</option>');
        $("#myLocality").append('<option value=Velachery>Velachery</option>');
        $("#myLocality").append('<option value=Tambaram>Tambaram</option>');
        $("#myLocality").append('<option value=Marathahalli>Marathahalli</option>');
        $("#myLocality").append('<option value=Whitefield>Whitefield</option>');
        $("#myLocality").append('<option value=Malleshwaram>Malleshwaram</option>');
        
        
        $("#myArea").empty();
        $("#myArea").append('<option value=NILL></option>');
        $("#myArea").append('<option value=Sq.Ft>Sq.Ft</option>');
        $("#myArea").append('<option value=Sq.Yards>Sq.Yards</option>');
        $("#myArea").append('<option value=Sq.Meter>Sq.Meter</option>');
        $("#myArea").append('<option value=Acres>Acres</option>');
        $("#myArea").append('<option value=Hectares>Hectares</option>');
        
        $("#myBhk").empty();
        $("#myBhk").append('<option value=NILL></option>');
        $("#myBhk").append('<option value=1>1</option>');
        $("#myBhk").append('<option value=2>2</option>');
        $("#myBhk").append('<option value=3>3</option>');
        $("#myBhk").append('<option value=4>4</option>');
        $("#myBhk").append('<option value=5>5</option>');
        $("#myBhk").append('<option value=6>6</option>');
        $("#myBhk").append('<option value=7>7</option>');
        $("#myBhk").append('<option value=8>8</option>');
        $("#myBhk").append('<option value=9>9</option>');
        $("#myBhk").append('<option value=10>10</option>');
        
        $("#myFloors").empty();
        $("#myFloors").append('<option value=NILL></option>');
        $("#myFloors").append('<option value=1>1</option>');
        $("#myFloors").append('<option value=2>2</option>');
        $("#myFloors").append('<option value=3>3</option>');
        $("#myFloors").append('<option value=4>4</option>');
        $("#myFloors").append('<option value=5>5</option>');
        $("#myFloors").append('<option value=6>6</option>');
        $("#myFloors").append('<option value=7>7</option>');
        $("#myFloors").append('<option value=8>8</option>');
        $("#myFloors").append('<option value=9>9</option>');
        $("#myFloors").append('<option value=10>10</option>');
        
        $("#myFacing").empty();
        $("#myFacing").append('<option value=NILL></option>');
        $("#myFacing").append('<option value=EAST>EAST</option>');
        $("#myFacing").append('<option value=WEST>WEST</option>');
        $("#myFacing").append('<option value=SOUTH>SOUTH</option>');
        $("#myFacing").append('<option value=NORTH>NORTH</option>');
        
        $("#myCarParking").empty();
        $("#myCarParking").append('<option value=NILL></option>');
        $("#myCarParking").append('<option value=1>1</option>');
        $("#myCarParking").append('<option value=2>2</option>');
        $("#myCarParking").append('<option value=3>3</option>');
        
        $("#myEvents").empty();
        $("#myEvents").append('<option value=NILL></option>');
        $("#myEvents").append('<option value=YES>YES</option>');
        $("#myEvents").append('<option value=No>NO</option>');
        
        $("#myLibRoom").empty();
        $("#myLibRoom").append('<option value=NILL></option>');
        $("#myLibRoom").append('<option value=YES>YES</option>');
        $("#myLibRoom").append('<option value=NO>NO</option>');
        
        $("#myFitCenter").empty();
        $("#myFitCenter").append('<option value=NILL></option>');
        $("#myFitCenter").append('<option value=YES>YES</option>');
        $("#myFitCenter").append('<option value=NO>NO</option>');
        
        
        $("#mySpa").empty();
        $("#mySpa").append('<option value=NILL></option>');
        $("#mySpa").append('<option value=YES>YES</option>');
        $("#mySpa").append('<option value=NO>NO</option>');  
        
        
    });
    
    $("input[name=someRadioGroup]:radio").change(function () {
        alert("it's checked  ");
        
    });

    //To Alter Property Values

    $("#rfirst").on('click',function() {
        alert("hello");
        });
    
    //Residential
    $("#first").on('click',function() {
        $("#propertyType").val("Residential");
        
        $('#mySelect').empty();
        $('#myBhk').removeAttr('disabled');
        $('#myFloors').removeAttr('disabled');
        $('#myFacing').removeAttr('disabled');
        $('#myCarParking').removeAttr('disabled');
        $('#myEvents').attr('disabled', 'disabled');
        $('#myLibRoom').attr('disabled', 'disabled');
        $('#myFitCenter').attr('disabled', 'disabled');
        $('#mySpa').attr('disabled', 'disabled');

        $("#mySelect").append('<option value=res_indhouse>Independent House </option>');
        $("#mySelect").append('<option value=res_aptmnt>Apartment </option>');
        $("#mySelect").append('<option value=res_villa>Independent Villa </option>');           
        $("#mySelect").append('<option value=res_flat>Flat</option>');
        $("#mySelect").append('<option value=res_fmhouse>Farm House</option>');
        $("#mySelect").append('<option value=res_other>Other Residential</option>');
    });

    //Commercial
    $("#second").on('click',function() {
        $("#propertyType").val("Commercial");

        //alert();
        
        $('#mySelect').empty(); 
        $('#myBhk').attr('disabled',true);
        $('#myFloors').removeAttr('disabled');
        $('#myFacing').removeAttr('disabled');
        $('#myEvents').removeAttr('disabled');
        $('#myCarParking').removeAttr('disabled');
        $('#myLibRoom').removeAttr('disabled');
        $('#myFitCenter').removeAttr('disabled');
        $('#mySpa').removeAttr('disabled');

        $("#mySelect").append('<option value=com_space>Commercial Space</option>');
        $("#mySelect").append('<option value=com_office>Office Space</option>');
        $("#mySelect").append('<option value=com_itpark>IT/Software Technology Park</option>');           
        $("#mySelect").append('<option value=com_indspace> Industrial Space</option>');
        $("#mySelect").append('<option value=com_whouse>Warehouse</option>');
        $("#mySelect").append('<option value=com_hotel>Hotel/Resort</option>');

    });

    //Land
    $("#third").on('click',function() {
        $("#propertyType").val("Land");
       
        $('#mySelect').empty();
        $('#myBhk').attr('disabled', 'disabled');
        $('#myFloors').attr('disabled', 'disabled');
        $('#myFacing').removeAttr('disabled');
        $('#myCarParking').attr('disabled', 'disabled');
        $('#myEvents').attr('disabled', 'disabled');
        $('#myLibRoom').attr('disabled', 'disabled');
        $('#myFitCenter').attr('disabled', 'disabled');
        $('#mySpa').attr('disabled', 'disabled');
        
        
        $("#mySelect").append('<option value=lnd_resland>Residential Land</option>');
        $("#mySelect").append('<option value=lnd_comland>Commercial Land</option>');
        $("#mySelect").append('<option value=lnd_indland>Industrial Land</option>');           
        $("#mySelect").append('<option value=lnd_agriland> Agricultural Land </option>');
        $("#mySelect").append('<option value=lnd_fmhouse> Farm House Land</option>');
        $("#mySelect").append('<option value=lnd_land>Land</option>');   

    });

    //Rent/Lease
    $("#four").on('click',function() {
        $("#propertyType").val("RentLease");        
       
        $('#mySelect').empty();
        $('#myBhk').removeAttr('disabled');
        $('#myFloors').removeAttr('disabled');
        $('#myFacing').removeAttr('disabled');
        $('#myCarParking').removeAttr('disabled');
        $('#myEvents').removeAttr('disabled');
        $('#myCarParking').removeAttr('disabled');
        $('#myLibRoom').removeAttr('disabled');
        $('#myFitCenter').removeAttr('disabled');
        $('#mySpa').removeAttr('disabled');


       
        $("#mySelect").append('<option value=rl_aptmnt>Apartments/Flats</option>');
        $("#mySelect").append('<option value=rl_indhouse>Individual Houses</option>');
        $("#mySelect").append('<option value=rl_villas>Villas</option>');           
        $("#mySelect").append('<option value=rl_saptmnt>Serviced Apartments</option>');
        $("#mySelect").append('<option value=rl_office>Office Space</option>');
        $("#mySelect").append('<option value=rl_indspace>Industrial Space</option>');  
    });
    

    //To change The Button Color
    $('input[thisype="submit"]').click(function(){
        $(this).toggleClass('blue');
    }); 

    $("#mySelect").on('change',function() {
        alert($(this).val());

        if ($(this).val() == 'res_indhouse') {
            
        } 
        else if ($(this).val() == 'lnd_comland') {
            $('#mySelect_Bhk').empty();
            
            $("#mySelect_Bhk").append('<option value=1>Commercial Space</option>');
            $("#mySelect_Bhk").append('<option value=12>Office Space</option>');
        } 
    });


})
