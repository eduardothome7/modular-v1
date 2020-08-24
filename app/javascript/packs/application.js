// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function(){
	var iField = 1
	$('.add-field').click(function(e){

		select = '<select name="fieldType"><option value="integer">integer</option><option value="varchar">varchar</option><option value="float">float</option><option value="datetime">datetime</option></select>'
		
		notnull = '<input type="checkbox" name="fieldNull">'
		title = '<input type="text" name="fieldTitle" value="titleexample"required>'
		name = '<input type="text" name="fieldName" value="nameexample"required>'

		field = '<tr class="trField" id="field_'+iField+'"><td class="tdTitle">'+title+'</td><td class="tdName">'+name+'</td><td class="tdType">'+select+'</td><td class="tdNullable">'+notnull+'</td></tr>'

		$('#fields tbody').append(field)
		iField++
		return false
		e.preventDefault()
	})

	$('#form_table').submit(function(e){
		json = '['
		$('.trField').each(function(){
			// json += '{'
			json += '{'
			
			fieldName 	= $(this).children('.tdName').children('input[name="fieldName"]').val()
			fieldTitle 	= $(this).children('.tdTitle').children('input[name=fieldTitle]').val()
			fieldType 	= $(this).children('.tdType').children('select[name=fieldType]').val()
			fieldNull 	= $(this).children('.tdNullable').children('input[name=fieldNull]').val()
			
			json += '"name":"'+fieldName+'",'	
			json += '"title":"'+fieldTitle+'",'	
			json += '"type":"'+fieldType+'",'	
			json += '"notnull": "'+fieldNull+'"'	
			// console.log('type')
			// console.log(fieldType)
			json += '},'
		})
		json = json.replace(/,\s*$/, "");
		json += ']'
		$('#table_fields').val(json)
		// console.log(json)
		// return false
	})
})
