$(document ).ready(function() {
    /*$("#inlineCheckbox1").on('click',function() {
        alert("Hello");
      });*/


    
   /* $('input:radio#first').click(function() {
        alert("hi");
        if ($(this).val() == 'Residential') {
            alert("hi");
        }

    });*/

    $("input[name='types of operation']").click(function() {
        if ($(this).val() == 'Residential') {
            $('#mySelect_Bhkect').empty();
            $('#mySelect_Bhk').removeAttr('disabled');

            $("#mySelect").append('<option value=res_indhouse>Independent House </option>');
            $("#mySelect").append('<option value=res_aptmnt>Apartment </option>');
            $("#mySelect").append('<option value=1>Independent Villa </option>');           
            $("#mySelect").append('<option value=1>Flat</option>');
            $("#mySelect").append('<option value=1>Farm House</option>');
            $("#mySelect").append('<option value=1>Other Residential</option>');
        } 
        else if ($(this).val() == 'Commercial') {
            $('#mySelect').empty();
            $('#mySelect_Bhk').attr('disabled',true);

            $("#mySelect").append('<option value=1>Commercial Space</option>');
            $("#mySelect").append('<option value=12>Office Space</option>');
            $("#mySelect").append('<option value=3>IT/Software Technology Park</option>');           
            $("#mySelect").append('<option value=1> Industrial Space</option>');
            $("#mySelect").append('<option value=1>Warehouse</option>');
            $("#mySelect").append('<option value=1>Hotel/Resort</option>');
        } 
        else if ($(this).val() == 'Land') {
            $('#mySelect').empty();
            $('#mySelect_Bhk').attr('disabled', 'disabled');

            $("#mySelect").append('<option value=lnd_resland>Residential Land</option>');
            $("#mySelect").append('<option value=lnd_comland>Commercial Land</option>');
            $("#mySelect").append('<option value=3>Industrial Land</option>');           
            $("#mySelect").append('<option value=1> Agricultural Land </option>');
            $("#mySelect").append('<option value=1> Farm House Land</option>');
            $("#mySelect").append('<option value=1>Land</option>');  
        } 
        else if ($(this).val() == 'Rent/Lease') {
            $('#mySelect').empty();
            $('#mySelect_Bhk').removeAttr('disabled');

            $("#mySelect").append('<option value=1>Apartments/Flats</option>');
            $("#mySelect").append('<option value=12>Individual Houses</option>');
            $("#mySelect").append('<option value=3>Villas</option>');           
            $("#mySelect").append('<option value=1>Serviced Apartments</option>');
            $("#mySelect").append('<option value=1>Office Space</option>');
            $("#mySelect").append('<option value=1>Industrial Space</option>');  
        } 
    });

    $("#mySelect").on('change',function() {
        alert($(this).val());

        if ($(this).val() == 'res_indhouse') {
            $('#mySelect_Bhk').empty();

            $("#mySelect_Bhk").append('<option value=1>Independent House </option>');
            $("#mySelect_Bhk").append('<option value=1>Apartment </option>');
        } 
        else if ($(this).val() == 'lnd_comland') {
            $('#mySelect_Bhk').empty();
            
            $("#mySelect_Bhk").append('<option value=1>Commercial Space</option>');
            $("#mySelect_Bhk").append('<option value=12>Office Space</option>');
        } 
    });

})