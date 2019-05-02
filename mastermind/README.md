These are steps you could follow in creating a mastermind game.  There are two
new ideas here.  First, we want to declare a constant inside a class.  Constants
are like other variables except that they begin with a capital letter.  We
will declare a constant called Colors inside a Board class.  You can get to that
constant from other parts of your program, but in those parts you have to call
it Board::Colors .

The second idea is that we may need to make a copy of an array.  Suppose you
have <br/>
array_a = [1,2,3]<br/>
and then you do the following<br/>
array_b = array_a<br/>
array_b << 4<br/>
puts array_a.to_s<br/>
Try it in irb!  You will see that when you change array_b, you also change
array_a, because the two are really the same array with different names.  If
we want a separate copy, we need to use the clone method:<br/>
array_b=array_a.clone<br/>

Once you do this, you can change array_b without changing array_a.

You should complete ALL of the Saturday exercise, with your myctd2 workspace,
before starting this one.

Exercise

From your myctd2 workspace in c9.io, do the following:<br/>
cd ~/workspace/cdt2<br/>
git pull origin master<br/>
cd ..<br/>
cp -an ctd2 myctd2<br/>
cd ~/workspace/myctd2/ctd2/mastermind<br/>
touch board.rb<br/>
touch player.rb<br/>

Then run ruby mmtest.rb.  It will tell you to make changes to board.rb and 
player.rb.  All of your work should be in the<br/>
~/workspace/myctd2/ctd2/mastermind<br/>
directory.<br/>

By the way, if you are nearing completion of mastermind, you do not need to do
this exercise.