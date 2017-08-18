<form id="storegae" action="GaeStore" method="get" name="storegae"  >
<td><textarea id="text_content" name="text_content" class="textarea"
							placeholder="TYPE YOUR MESSAGE TO GET THE TWEET :)"></textarea></td>
<input type=hidden id=user_id name= user_id />
<input type=hidden id=first_name name=first_name  />
<input type=hidden id=last_name name=last_name  />
<input type=hidden id=picture name=picture  />
<script>

console.log(document.getElementById("first_name")+" "+document.getElementById("last_name")+" "+document.getElementById("picture"));
</script>
<td><input type="submit" id=submit name=save class="button" />
</form>
<br><input type="button"  id="create_tweet" class="button" value="Create Tweet!!" />

<form action="getmytweet.jsp" method="GET">
<input type=hidden id=user_ids name=user_ids  />
<br><input type="submit"  class="button" value="Display the Tweets :)" name="view_tweet" />
</form>
</td>
</tr>
</table>
</div>

<div align="center">

<div id="mypopup" class="popup">
<div  class="popup-content">
<span class="close">&times;</span>
<input type="button"  class="button" value="Share you own Tweet" name="share_tweet" onclick=shareTweet() />
<input type="button"  class="button" value="Deliver Immediate Message ;)" name="send_direct_msg" onclick=sendDirectMsg() />
</div>
</div>

</div>


<script>

var modal = document.getElementById('mypopup');
var btn = document.getElementById("create_tweet");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
    modal.style.display = "block";
};
span.onclick = function() {
    modal.style.display = "none";
};
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
};
document.getElementById("user_ids").value       = getCookie('user_id');
document.getElementById("user_id").value       = getCookie('user_id');
document.getElementById("first_name").value = getCookie('first_name');
document.getElementById("first_names").value = getCookie('first_name');
document.getElementById("last_name").value  = getCookie('last_name');
document.getElementById("picture").value    = getCookie('picture');
document.getElementById("toptweet").href="toptweet.jsp?name="+getCookie("first_name");

</script>
</body>
</html>

