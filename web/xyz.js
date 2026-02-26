/* global form1 */

function UNAME()
{
    x=document.getElementById('t1').value.length;
    if(x==0)
    {
        
        document.getElementById('s1').innerHTML="please enter name!";
        document.getElementById('s1').style.color="red";
        return false;
    }
    else if(x<3)
    {
        document.getElementById('s1').innerHTML="uname length < 3 !";
        document.getElementById('s1').style.color="red";
        return false;
    }
    else
    {
        return true;
    }
}
function UPASS()
{
    x=document.getElementById('t2').value.length;
    if(x==0)
    {
        document.getElementById('s2').innerHTML="please enter pass!";
        document.getElementById('s2').style.color="red";
        return false;
    }
    else if(x<3)
    {
        document.getElementById('s2').innerHTML="upass length < 3 !";
        document.getElementById('s2').style.color="red";
        return false;
    }
    else
    {
        if(x<=4)
        {
        document.getElementById('s2').innerHTML="upass is too weak";
        document.getElementById('s2').style.color="red";
        }
        else if(x<8)
        {
        document.getElementById('s2').innerHTML="good pass";
        document.getElementById('s2').style.color="red";
        }
        else
        {
        document.getElementById('s2').innerHTML="strong pass";
        document.getElementById('s2').style.color="red";    
        }
        return true;
    }
}
function UCN()
{
    x=document.getElementById('t3').value.length;
    if(x==0)
    {
        document.getElementById('s3').innerHTML="please enter c.n.!";
        document.getElementById('s3').style.color="red";
        return false;
    }
    else if(x<10)
    {
        document.getElementById('s3').innerHTML="c.n. length < 10 !";
        document.getElementById('s3').style.color="red";
        return false;
    }
    else
    {
        return true;
    }
}
function demo()
{
        document.getElementById('s1').innerHTML="";
        document.getElementById('s2').innerHTML="";
        UNAME();
        UPASS();
        UCN();
        if(UNAME() && UPASS() && UCN())
        {
            form1.submit();//to send conrol on the action of regisdemo
        }
}




