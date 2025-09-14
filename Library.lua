local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}
end return a.cache[b].c end}do function a.a()local b,c,d='8.0',cloneref or
function(b)return b end,{Theme={Syntax={Text=Color3.fromRGB(204,204,204),
Background=Color3.fromRGB(20,20,20),Selection=Color3.fromRGB(255,255,255),
SelectionBack=Color3.fromRGB(102,161,255),Operator=Color3.fromRGB(204,204,204),
Number=Color3.fromRGB(255,198,0),String=Color3.fromRGB(172,240,148),Comment=
Color3.fromRGB(102,102,102),Keyword=Color3.fromRGB(248,109,124),BuiltIn=Color3.
fromRGB(132,214,247),LocalMethod=Color3.fromRGB(253,251,172),LocalProperty=
Color3.fromRGB(97,161,241),Nil=Color3.fromRGB(255,198,0),Bool=Color3.fromRGB(255
,198,0),Function=Color3.fromRGB(248,109,124),Local=Color3.fromRGB(248,109,124),
Self=Color3.fromRGB(248,109,124),FunctionName=Color3.fromRGB(253,251,172),
Bracket=Color3.fromRGB(204,204,204)}}}local e,f,g=setmetatable({},{__index=
function(e,f)local g=game:GetService(f)return c(g)end}),{StartAndEnd={Enum.
UserInputType.MouseButton1,Enum.UserInputType.Touch},Movement={Enum.
UserInputType.MouseMovement,Enum.UserInputType.Touch}},Instance.new'Frame'local
h,i,j,k=e.Players,e.UserInputService,e.RunService,e.TweenService local l=h.
LocalPlayer local m,n,o,p=l:GetMouse(),function(m,n)for o,p in next,n do m[o]=p
end return m end,function(m,n)local o=m.UserInputType return table.find(f[n],o)
end,{}p.CheckMouseInGui=function(q)if q==nil then return false end local r,s=q.
AbsolutePosition,q.AbsoluteSize return m.X>=r.X and m.X<r.X+s.X and m.Y>=r.Y and
m.Y<r.Y+s.Y end p.Signal=(function()local q,r={},function(q)local r=table.find(q
.Signal.Connections,q)if r then table.remove(q.Signal.Connections,r)end end q.
Connect=function(s,t)if type(t)~='function'then error
'Attempt to connect a non-function'end local u={Signal=s,Func=t,Disconnect=r}s.
Connections[#s.Connections+1]=u return u end q.Fire=function(s,...)for t,u in
next,s.Connections do xpcall(coroutine.wrap(u.Func),function(v)warn(v..'\n'..
debug.traceback())end,...)end end local s={__index=q,__tostring=function(s)
return'Signal: '..tostring(#s.Connections)..' Connections'end}local t=function()
local t={}t.Connections={}return setmetatable(t,s)end return{new=t}end)()local q
=function(q,r)local s=Instance.new(q)for t,u in next,r do s[t]=u end return s
end p.CreateArrow=function(r,s,t)local u,v=s,q('Frame',{BackgroundTransparency=1
,Name='Arrow',Size=UDim2.new(0,r,0,r)})if t=='up'then for w=1,s do q('Frame',{
BackgroundColor3=Color3.new(0.8627450980392157,0.8627450980392157,
0.8627450980392157),BorderSizePixel=0,Position=UDim2.new(0,math.floor(r/2)-(w-1)
,0,math.floor(r/2)+w-math.floor(u/2)-1),Size=UDim2.new(0,w+(w-1),0,1),Parent=v})
end return v elseif t=='down'then for w=1,s do q('Frame',{BackgroundColor3=
Color3.new(0.8627450980392157,0.8627450980392157,0.8627450980392157),
BorderSizePixel=0,Position=UDim2.new(0,math.floor(r/2)-(w-1),0,math.floor(r/2)-w
+math.floor(u/2)+1),Size=UDim2.new(0,w+(w-1),0,1),Parent=v})end return v elseif
t=='left'then for w=1,s do q('Frame',{BackgroundColor3=Color3.new(
0.8627450980392157,0.8627450980392157,0.8627450980392157),BorderSizePixel=0,
Position=UDim2.new(0,math.floor(r/2)+w-math.floor(u/2)-1,0,math.floor(r/2)-(w-1)
),Size=UDim2.new(0,1,0,w+(w-1)),Parent=v})end return v elseif t=='right'then for
w=1,s do q('Frame',{BackgroundColor3=Color3.new(0.8627450980392157,
0.8627450980392157,0.8627450980392157),BorderSizePixel=0,Position=UDim2.new(0,
math.floor(r/2)-w+math.floor(u/2)+1,0,math.floor(r/2)-(w-1)),Size=UDim2.new(0,1,
0,w+(w-1)),Parent=v})end return v end error''end p.FastWait=(function(r)task.
wait(r)end)p.ScrollBar=(function()local r,s,t,u={},p.CheckMouseInGui,p.
CreateArrow,function(r)local s,t,u,v=r.TotalSpace,r.VisibleSpace,r.GuiElems.
ScrollThumb,r.GuiElems.ScrollThumbFrame if not(r:CanScrollUp()or r:
CanScrollDown())then u.Visible=false else u.Visible=true end if r.Horizontal
then u.Size=UDim2.new(t/s,0,1,0)if u.AbsoluteSize.X<10 then u.Size=UDim2.new(0,
10,1,0)end local w,x=v.AbsoluteSize.X,u.AbsoluteSize.X u.Position=UDim2.new(r:
GetScrollPercent()*(w-x)/w,0,0,0)else u.Size=UDim2.new(1,0,t/s,0)if u.
AbsoluteSize.Y<10 then u.Size=UDim2.new(1,0,0,10)end local w,x=v.AbsoluteSize.Y,
u.AbsoluteSize.Y u.Position=UDim2.new(0,0,r:GetScrollPercent()*(w-x)/w,0)end end
local v=function(v)local w,x,y=(q('Frame',{Style=0,Active=true,AnchorPoint=
Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,
0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(
0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,
ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-10,0,0),Rotation=0,
Selectable=false,Size=UDim2.new(0,10,1,0),SizeConstraint=0,Visible=true,ZIndex=1
,Name='ScrollBar'}))if v.Horizontal then w.Size=UDim2.new(1,0,0,10)x=q(
'ImageButton',{Parent=w,Name='Left',Size=UDim2.new(0,10,0,10),
BackgroundTransparency=1,BorderSizePixel=0,AutoButtonColor=false})t(10,4,'left')
.Parent=x y=q('ImageButton',{Parent=w,Name='Right',Position=UDim2.new(1,-10,0,0)
,Size=UDim2.new(0,10,0,10),BackgroundTransparency=1,BorderSizePixel=0,
AutoButtonColor=false})t(10,4,'right').Parent=y else w.Size=UDim2.new(0,10,1,0)x
=q('ImageButton',{Parent=w,Name='Up',Size=UDim2.new(0,10,0,10),
BackgroundTransparency=1,BorderSizePixel=0,AutoButtonColor=false})t(10,4,'up').
Parent=x y=q('ImageButton',{Parent=w,Name='Down',Position=UDim2.new(0,0,1,-10),
Size=UDim2.new(0,10,0,10),BackgroundTransparency=1,BorderSizePixel=0,
AutoButtonColor=false})t(10,4,'down').Parent=y end local z=q('Frame',{
BackgroundTransparency=1,Parent=w})if v.Horizontal then z.Position=UDim2.new(0,
10,0,0)z.Size=UDim2.new(1,-20,1,0)else z.Position=UDim2.new(0,0,0,10)z.Size=
UDim2.new(1,0,1,-20)end local A,B,C,D,E=q('Frame',{BackgroundColor3=Color3.new(
0.47058823529411764,0.47058823529411764,0.47058823529411764),BorderSizePixel=0,
Parent=z}),q('Frame',{BackgroundTransparency=1,Name='Markers',Size=UDim2.new(1,0
,1,0),Parent=z}),false,false,false x.InputBegan:Connect(function(F)if o(F,
'Movement')and not C and v:CanScrollUp()then x.BackgroundTransparency=0.8 end if
not o(F,'StartAndEnd')or not v:CanScrollUp()then return end C=true x.
BackgroundTransparency=0.5 if v:CanScrollUp()then v:ScrollUp()v.Scrolled:Fire()
end local G,H=(tick())H=i.InputEnded:Connect(function(I)if not o(I,'StartAndEnd'
)then return end H:Disconnect()if s(x)and v:CanScrollUp()then x.
BackgroundTransparency=0.8 else x.BackgroundTransparency=1 end C=false end)while
C do if tick()-G>=0.3 and v:CanScrollUp()then v:ScrollUp()v.Scrolled:Fire()end
wait()end end)x.InputEnded:Connect(function(F)if o(F,'Movement')and not C then x
.BackgroundTransparency=1 end end)y.InputBegan:Connect(function(F)if o(F,
'Movement')and not C and v:CanScrollDown()then y.BackgroundTransparency=0.8 end
if not o(F,'StartAndEnd')or not v:CanScrollDown()then return end C=true y.
BackgroundTransparency=0.5 if v:CanScrollDown()then v:ScrollDown()v.Scrolled:
Fire()end local G,H=(tick())H=i.InputEnded:Connect(function(I)if not o(I,
'StartAndEnd')then return end H:Disconnect()if s(y)and v:CanScrollDown()then y.
BackgroundTransparency=0.8 else y.BackgroundTransparency=1 end C=false end)while
C do if tick()-G>=0.3 and v:CanScrollDown()then v:ScrollDown()v.Scrolled:Fire()
end wait()end end)y.InputEnded:Connect(function(F)if o(F,'Movement')and not C
then y.BackgroundTransparency=1 end end)A.InputBegan:Connect(function(F)if o(F,
'Movement')and not D then A.BackgroundTransparency=0.2 A.BackgroundColor3=v.
ThumbSelectColor end if not o(F,'StartAndEnd')then return end local G,H=v.
Horizontal and'X'or'Y'C=false E=false D=true A.BackgroundTransparency=0 local I,
J,K=(m[G]-A.AbsolutePosition[G])J=i.InputEnded:Connect(function(L)if not o(L,
'StartAndEnd')then return end J:Disconnect()if K then K:Disconnect()end if s(A)
then A.BackgroundTransparency=0.2 else A.BackgroundTransparency=0 A.
BackgroundColor3=v.ThumbColor end D=false end)v:Update()K=i.InputChanged:
Connect(function(L)if o(L,'Movement')and D and J.Connected then local M,N=z.
AbsoluteSize[G]-A.AbsoluteSize[G],m[G]-z.AbsolutePosition[G]-I if N>M then N=M
elseif N<0 then N=0 end if H~=N then H=N v:ScrollTo(math.floor(0.5+N/M*(v.
TotalSpace-v.VisibleSpace)))end wait()end end)end)A.InputEnded:Connect(function(
F)if o(F,'Movement')and not D then A.BackgroundTransparency=0 A.BackgroundColor3
=v.ThumbColor end end)z.InputBegan:Connect(function(F)if not o(F,'StartAndEnd')
or s(A)then return end local G,H=v.Horizontal and'X'or'Y',0 if m[G]>=A.
AbsolutePosition[G]+A.AbsoluteSize[G]then H=1 end local I=function()local I=v.
VisibleSpace-1 if H==0 and m[G]<A.AbsolutePosition[G]then v:ScrollTo(v.Index-I)
elseif H==1 and m[G]>=A.AbsolutePosition[G]+A.AbsoluteSize[G]then v:ScrollTo(v.
Index+I)end end D=false E=true I()local J,K=(tick())K=i.InputEnded:Connect(
function(L)if not o(L,'StartAndEnd')then return end K:Disconnect()E=false end)
while E do if tick()-J>=0.3 and s(z)then I()end wait()end end)w.
MouseWheelForward:Connect(function()v:ScrollTo(v.Index-v.WheelIncrement)end)w.
MouseWheelBackward:Connect(function()v:ScrollTo(v.Index+v.WheelIncrement)end)v.
GuiElems.ScrollThumb=A v.GuiElems.ScrollThumbFrame=z v.GuiElems.Button1=x v.
GuiElems.Button2=y v.GuiElems.MarkerFrame=B return w end r.Update=function(w,x)
local y,z,A,B=w.TotalSpace,w.VisibleSpace,w.GuiElems.Button1,w.GuiElems.Button2
w.Index=math.clamp(w.Index,0,math.max(0,y-z))if w.LastTotalSpace~=w.TotalSpace
then w.LastTotalSpace=w.TotalSpace w:UpdateMarkers()end if w:CanScrollUp()then
for C,D in pairs(A.Arrow:GetChildren())do D.BackgroundTransparency=0 end else A.
BackgroundTransparency=1 for C,D in pairs(A.Arrow:GetChildren())do D.
BackgroundTransparency=0.5 end end if w:CanScrollDown()then for C,D in pairs(B.
Arrow:GetChildren())do D.BackgroundTransparency=0 end else B.
BackgroundTransparency=1 for C,D in pairs(B.Arrow:GetChildren())do D.
BackgroundTransparency=0.5 end end u(w)end r.UpdateMarkers=function(w)local x=w.
GuiElems.MarkerFrame x:ClearAllChildren()for y,z in pairs(w.Markers)do if y<w.
TotalSpace then q('Frame',{BackgroundTransparency=0,BackgroundColor3=z,
BorderSizePixel=0,Position=w.Horizontal and UDim2.new(y/w.TotalSpace,0,1,-6)or
UDim2.new(1,-6,y/w.TotalSpace,0),Size=w.Horizontal and UDim2.new(0,1,0,6)or
UDim2.new(0,6,0,1),Name='Marker'..tostring(y),Parent=x})end end end r.AddMarker=
function(w,x,y)w.Markers[x]=y or Color3.new(0,0,0)end r.ScrollTo=function(w,x,y)
w.Index=x w:Update()if not y then w.Scrolled:Fire()end end r.ScrollUp=function(w
)w.Index=w.Index-w.Increment w:Update()end r.ScrollDown=function(w)w.Index=w.
Index+w.Increment w:Update()end r.CanScrollUp=function(w)return w.Index>0 end r.
CanScrollDown=function(w)return w.Index+w.VisibleSpace<w.TotalSpace end r.
GetScrollPercent=function(w)return w.Index/(w.TotalSpace-w.VisibleSpace)end r.
SetScrollPercent=function(w,x)w.Index=math.floor(x*(w.TotalSpace-w.VisibleSpace)
)w:Update()end r.Texture=function(w,x)w.ThumbColor=x.ThumbColor or Color3.new(0,
0,0)w.ThumbSelectColor=x.ThumbSelectColor or Color3.new(0,0,0)w.GuiElems.
ScrollThumb.BackgroundColor3=x.ThumbColor or Color3.new(0,0,0)w.Gui.
BackgroundColor3=x.FrameColor or Color3.new(0,0,0)w.GuiElems.Button1.
BackgroundColor3=x.ButtonColor or Color3.new(0,0,0)w.GuiElems.Button2.
BackgroundColor3=x.ButtonColor or Color3.new(0,0,0)for y,z in pairs(w.GuiElems.
Button1.Arrow:GetChildren())do z.BackgroundColor3=x.ArrowColor or Color3.new(0,0
,0)end for y,z in pairs(w.GuiElems.Button2.Arrow:GetChildren())do z.
BackgroundColor3=x.ArrowColor or Color3.new(0,0,0)end end r.SetScrollFrame=
function(w,x)if w.ScrollUpEvent then w.ScrollUpEvent:Disconnect()w.ScrollUpEvent
=nil end if w.ScrollDownEvent then w.ScrollDownEvent:Disconnect()w.
ScrollDownEvent=nil end w.ScrollUpEvent=x.MouseWheelForward:Connect(function()w:
ScrollTo(w.Index-w.WheelIncrement)end)w.ScrollDownEvent=x.MouseWheelBackward:
Connect(function()w:ScrollTo(w.Index+w.WheelIncrement)end)end local w={}w.
__index=r local x=function(x)local y=setmetatable({Index=0,VisibleSpace=0,
TotalSpace=0,Increment=1,WheelIncrement=1,Markers={},GuiElems={},Horizontal=x,
LastTotalSpace=0,Scrolled=p.Signal.new()},w)y.Gui=v(y)y:Texture{ThumbColor=
Color3.fromRGB(60,60,60),ThumbSelectColor=Color3.fromRGB(75,75,75),ArrowColor=
Color3.new(1,1,1),FrameColor=Color3.fromRGB(40,40,40),ButtonColor=Color3.
fromRGB(75,75,75)}return y end return{new=x}end)()p.CodeFrame=(function()local r
,s,t,u,v,w,x,y={},{[1]='String',[2]='String',[3]='String',[4]='Comment',[5]=
'Operator',[6]='Number',[7]='Keyword',[8]='BuiltIn',[9]='LocalMethod',[10]=
'LocalProperty',[11]='Nil',[12]='Bool',[13]='Function',[14]='Local',[15]='Self',
[16]='FunctionName',[17]='Bracket'},{['nil']=11,['true']=12,['false']=12,[
'function']=13,['local']=14,self=15},{['and']=true,['break']=true,['do']=true,[
'else']=true,['elseif']=true,['end']=true,['false']=true,['for']=true,[
'function']=true,['if']=true,['in']=true,['local']=true,['nil']=true,['not']=
true,['or']=true,['repeat']=true,['return']=true,['then']=true,['true']=true,[
'until']=true,['while']=true,plugin=true},{delay=true,elapsedTime=true,require=
true,spawn=true,tick=true,time=true,typeof=true,UserSettings=true,wait=true,warn
=true,game=true,shared=true,script=true,workspace=true,assert=true,
collectgarbage=true,error=true,getfenv=true,getmetatable=true,ipairs=true,
loadstring=true,newproxy=true,next=true,pairs=true,pcall=true,print=true,
rawequal=true,rawget=true,rawset=true,select=true,setfenv=true,setmetatable=true
,tonumber=true,tostring=true,type=true,unpack=true,xpcall=true,_G=true,_VERSION=
true,coroutine=true,debug=true,math=true,os=true,string=true,table=true,bit32=
true,utf8=true,Axes=true,BrickColor=true,CFrame=true,Color3=true,ColorSequence=
true,ColorSequenceKeypoint=true,DockWidgetPluginGuiInfo=true,Enum=true,Faces=
true,Instance=true,NumberRange=true,NumberSequence=true,NumberSequenceKeypoint=
true,PathWaypoint=true,PhysicalProperties=true,Random=true,Ray=true,Rect=true,
Region3=true,Region3int16=true,TweenInfo=true,UDim=true,UDim2=true,Vector2=true,
Vector2int16=true,Vector3=true,Vector3int16=true,Drawing=true,syn=true,crypt=
true,cache=true,bit=true,readfile=true,writefile=true,isfile=true,appendfile=
true,listfiles=true,loadfile=true,isfolder=true,makefolder=true,delfolder=true,
delfile=true,setclipboard=true,setfflag=true,getnamecallmethod=true,isluau=true,
setnonreplicatedproperty=true,getspecialinfo=true,saveinstance=true,
rconsoleprint=true,rconsoleinfo=true,rconsolewarn=true,rconsoleerr=true,
rconsoleclear=true,rconsolename=true,rconsoleinput=true,rconsoleinputasync=true,
printconsole=true,checkcaller=true,islclosure=true,iscclosure=true,dumpstring=
true,decompile=true,hookfunction=true,newcclosure=true,isrbxactive=true,keypress
=true,keyrelease=true,mouse1click=true,mouse1press=true,mouse1release=true,
mouse2click=true,mouse2press=true,mouse2release=true,mousescroll=true,
mousemoveabs=true,mousemoverel=true,getrawmetatable=true,setrawmetatable=true,
setreadonly=true,isreadonly=true,getsenv=true,getcallingscript=true,getgenv=true
,getrenv=true,getreg=true,getgc=true,getinstances=true,getnilinstances=true,
getscripts=true,getloadedmodules=true,getconnections=true,firesignal=true,
fireclickdetector=true,firetouchinterest=true,fireproximityprompt=true},false,{[
"'"]='&apos;',['"']='&quot;',['<']='&lt;',['>']='&gt;',['&']='&amp;'},'\u{cd}'
local z,A,B,C,D,E=(' %s%s '):format(y,y),{[('[^%s] %s'):format(y,y)]=0,[(' %s%s'
):format(y,y)]=-1,[('%s%s '):format(y,y)]=2,[('%s [^%s]'):format(y,y)]=1},{},
function()local z,A,B=getfenv(),type,tostring for C,D in next,v do local E=z[C]
if A(E)=='table'then local F={}for G,H in next,E do F[G]=true end v[C]=F end end
local C,D={},Enum:GetEnums()for E=1,#D do C[B(D[E])]=true end v.Enum=C w=true
end,function(z)local A=z.GuiElems.EditBox A.Focused:Connect(function()z:
ConnectEditBoxEvent()z.Editing=true end)A.FocusLost:Connect(function()z:
DisconnectEditBoxEvent()z.Editing=false end)A:GetPropertyChangedSignal'Text':
Connect(function()local B=A.Text if#B==0 or z.EditBoxCopying then return end B=B
:gsub('\t','    ')A.Text=''z:AppendText(B)end)end,function(z)local A,B=z.
GuiElems.LinesFrame,z.Lines A.InputBegan:Connect(function(C)if o(C,'StartAndEnd'
)then local D,E,F,G=math.ceil(z.FontSize/2),z.FontSize,m.X-A.AbsolutePosition.X,
m.Y-A.AbsolutePosition.Y local H,I,J,K,L,M,N=math.round(F/D)+z.ViewX,math.floor(
G/E)+z.ViewY,0,0 I=math.min(#B-1,I)local O=B[I+1]or''H=math.min(#O,H+z:
TabAdjust(H,I))z.SelectionRange={{-1,-1},{-1,-1}}z:MoveCursor(H,I)z.FloatCursorX
=H local P=function()local P,Q=m.X-A.AbsolutePosition.X,m.Y-A.AbsolutePosition.Y
local R,S=math.max(0,math.round(P/D)+z.ViewX),math.max(0,math.floor(Q/E)+z.ViewY
)S=math.min(#B-1,S)local T=B[S+1]or''R=math.min(#T,R+z:TabAdjust(R,S))if S<I or(
S==I and R<H)then z.SelectionRange={{R,S},{H,I}}else z.SelectionRange={{H,I},{R,
S}}end z:MoveCursor(R,S)z.FloatCursorX=R z:Refresh()end L=i.InputEnded:Connect(
function(Q)if o(Q,'StartAndEnd')then L:Disconnect()M:Disconnect()N:Disconnect()z
:SetCopyableSelection()end end)M=i.InputChanged:Connect(function(Q)if o(Q,
'Movement')then local R,S,T,U=m.Y-A.AbsolutePosition.Y,m.Y-A.AbsolutePosition.Y-
A.AbsoluteSize.Y,m.X-A.AbsolutePosition.X,m.X-A.AbsolutePosition.X-A.
AbsoluteSize.X J=0 K=0 if S>0 then J=math.floor(S*0.05)+1 elseif R<0 then J=math
.ceil(R*0.05)-1 end if U>0 then K=math.floor(U*0.05)+1 elseif T<0 then K=math.
ceil(T*0.05)-1 end P()end end)N=j.RenderStepped:Connect(function()if J~=0 or K~=
0 then z:ScrollDelta(K,J)P()end end)z:Refresh()end end)end function r.
MakeEditorFrame(F)local G=Instance.new'TextButton'G.BackgroundTransparency=1 G.
TextTransparency=1 G.BackgroundColor3=Color3.fromRGB(40,40,40)G.BorderSizePixel=
0 G.Size=UDim2.fromOffset(100,100)G.Visible=true local H,I={},Instance.new
'Frame'I.Name='Lines'I.BackgroundTransparency=1 I.Size=UDim2.new(1,0,1,0)I.
ClipsDescendants=true I.Parent=G local J=Instance.new'TextLabel'J.Name=
'LineNumbers'J.BackgroundTransparency=1 J.FontFace=F.FontFace J.TextXAlignment=
Enum.TextXAlignment.Right J.TextYAlignment=Enum.TextYAlignment.Top J.
ClipsDescendants=true J.RichText=true J.Parent=G g.Name='Cursor'g.
BackgroundColor3=Color3.fromRGB(220,220,220)g.BorderSizePixel=0 g.Parent=G local
K=Instance.new'TextBox'K.Name='EditBox'K.MultiLine=true K.Visible=false K.Parent
=G K.TextSize=F.FontSize K.FontFace=F.FontFace B.Invis=k:Create(g,TweenInfo.new(
0,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency=1})B.
Vis=k:Create(g,TweenInfo.new(0,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
{BackgroundTransparency=0})local L=Instance.new'Frame'L.BackgroundColor3=Color3.
new(0.15686275064945,0.15686275064945,0.15686275064945)L.BorderSizePixel=0 L.
Name='ScrollCorner'L.Position=UDim2.new(1,-10,1,-10)L.Size=UDim2.new(0,10,0,10)L
.Visible=false H.ScrollCorner=L H.LinesFrame=I H.LineNumbersLabel=J H.Cursor=g H
.EditBox=K H.ScrollCorner.Parent=G I.InputBegan:Connect(function(M)if o(M,
'StartAndEnd')then F:SetEditing(true,M)end end)F.Frame=G F.Gui=G F.GuiElems=H D(
F)E(F)return G end r.GetSelectionText=function(F)if not F:IsValidRange()then
return''end local G=F.SelectionRange local H,I,J,K=G[1][1],G[1][2],G[2][1],G[2][
2]local L,M=K-I,F.Lines if not M[I+1]or not M[K+1]then return''end if L==0 then
return F:ConvertText(M[I+1]:sub(H+1,J),false)end local N,O=M[I+1]:sub(H+1),M[K+1
]:sub(1,J)local P=N..'\n'for Q=I+1,K-1 do P=P..M[Q+1]..'\n'end P=P..O return F:
ConvertText(P,false)end r.SetCopyableSelection=function(F)local G,H=F:
GetSelectionText(),F.GuiElems.EditBox F.EditBoxCopying=true H.Text=G H.
SelectionStart=1 H.CursorPosition=#H.Text+1 F.EditBoxCopying=false end r.
ConnectEditBoxEvent=function(F)if F.EditBoxEvent then F.EditBoxEvent:Disconnect(
)end F.EditBoxEvent=i.InputBegan:Connect(function(G)if G.UserInputType~=Enum.
UserInputType.Keyboard then return end local H,I,J=Enum.KeyCode,G.KeyCode,
function(H,I)local J,K J=i.InputEnded:Connect(function(L)if L.KeyCode~=H then
return end J:Disconnect()K=true end)I()p.FastWait(0.5)while not K do I()p.
FastWait(0.03)end end if I==H.Down then J(H.Down,function()F.CursorX=F.
FloatCursorX F.CursorY=F.CursorY+1 F:UpdateCursor()F:JumpToCursor()end)elseif I
==H.Up then J(H.Up,function()F.CursorX=F.FloatCursorX F.CursorY=F.CursorY-1 F:
UpdateCursor()F:JumpToCursor()end)elseif I==H.Left then J(H.Left,function()local
K=F.Lines[F.CursorY+1]or''F.CursorX=F.CursorX-1-(K:sub(F.CursorX-3,F.CursorX)==z
and 3 or 0)if F.CursorX<0 then F.CursorY=F.CursorY-1 local L=F.Lines[F.CursorY+1
]or''F.CursorX=#L end F.FloatCursorX=F.CursorX F:UpdateCursor()F:JumpToCursor()
end)elseif I==H.Right then J(H.Right,function()local K=F.Lines[F.CursorY+1]or''F
.CursorX=F.CursorX+1+(K:sub(F.CursorX+1,F.CursorX+4)==z and 3 or 0)if F.CursorX>
#K then F.CursorY=F.CursorY+1 F.CursorX=0 end F.FloatCursorX=F.CursorX F:
UpdateCursor()F:JumpToCursor()end)elseif I==H.Backspace then J(H.Backspace,
function()local K,L if F:IsValidRange()then K=F.SelectionRange[1]L=F.
SelectionRange[2]else L={F.CursorX,F.CursorY}end if not K then local M=F.Lines[F
.CursorY+1]or''F.CursorX=F.CursorX-1-(M:sub(F.CursorX-3,F.CursorX)==z and 3 or 0
)if F.CursorX<0 then F.CursorY=F.CursorY-1 local N=F.Lines[F.CursorY+1]or''F.
CursorX=#N end F.FloatCursorX=F.CursorX F:UpdateCursor()K=K or{F.CursorX,F.
CursorY}end F:DeleteRange({K,L},false,true)F:ResetSelection(true)F:JumpToCursor(
)end)elseif I==H.Delete then J(H.Delete,function()local K,L if F:IsValidRange()
then K=F.SelectionRange[1]L=F.SelectionRange[2]else K={F.CursorX,F.CursorY}end
if not L then local M=F.Lines[F.CursorY+1]or''local N,O=F.CursorX+1+(M:sub(F.
CursorX+1,F.CursorX+4)==z and 3 or 0),F.CursorY if N>#M then O=O+1 N=0 end F:
UpdateCursor()L=L or{N,O}end F:DeleteRange({K,L},false,true)F:ResetSelection(
true)F:JumpToCursor()end)elseif i:IsKeyDown(Enum.KeyCode.LeftControl)then if I==
H.A then F.SelectionRange={{0,5},{#F.Lines[#F.Lines],#F.Lines-1}}F:
SetCopyableSelection()F:Refresh()end end end)end r.DisconnectEditBoxEvent=
function(F)if F.EditBoxEvent then F.EditBoxEvent:Disconnect()g.
BackgroundTransparency=1 r.CursorAnim(F,false)end end r.ResetSelection=function(
F,G)F.SelectionRange={{-1,-1},{-1,-1}}if not G then F:Refresh()end end r.
IsValidRange=function(F,G)local H=G or F.SelectionRange local I,J,K,L=H[1][1],H[
1][2],H[2][1],H[2][2]if I==-1 or(I==K and J==L)then return false end return true
end r.DeleteRange=function(F,G,H,I)G=G or F.SelectionRange if not F:
IsValidRange(G)then return end local J,K,L,M,N=F.Lines,G[1][1],G[1][2],G[2][1],G
[2][2]local O=N-L if not J[L+1]or not J[N+1]then return end local P,Q=J[L+1]:
sub(1,K),J[N+1]:sub(M+1)J[L+1]=P..Q local R=table.remove for S=1,O do R(J,L+2)
end if G==F.SelectionRange then F.SelectionRange={{-1,-1},{-1,-1}}end if I then
F.CursorX=K F.CursorY=L F:UpdateCursor()end if not H then F:ProcessTextChange()
end end r.AppendText=function(F,G)F:DeleteRange(nil,true,true)local H,I,J=F.
Lines,F.CursorX,F.CursorY local K=H[J+1]local L,M=K:sub(1,I),K:sub(I+1)G=G:gsub(
'\r\n','\n')G=F:ConvertText(G,true)local N,O=G:split'\n',table.insert for P=1,#N
do local Q=J+P if P>1 then O(H,Q,'')end local R,S,T=N[P],(P==1 and L or''),(P==#
N and M or'')H[Q]=S..R..T end if#N>1 then I=0 end F:ProcessTextChange()F.CursorX
=I+#N[#N]F.CursorY=J+#N-1 F:UpdateCursor()end r.ScrollDelta=function(F,G,H)F.
ScrollV:ScrollTo(F.ScrollV.Index+H)F.ScrollH:ScrollTo(F.ScrollH.Index+G)end r.
TabAdjust=function(F,G,H)local I=F.Lines local J=I[H+1]G=G+1 if J then local K,L
,M=J:sub(G-1,G-1),J:sub(G,G),J:sub(G+1,G+1)local N=(#K>0 and K or' ')..(#L>0 and
L or' ')..(#M>0 and M or' ')for O,P in pairs(A)do if N:find(O)then return P end
end end return 0 end r.SetEditing=function(F,G,H)if H then F:UpdateCursor(H)end
if G then if F.Editable then F.GuiElems.EditBox.Text=''F.GuiElems.EditBox:
CaptureFocus()end else F.GuiElems.EditBox:ReleaseFocus()end end r.CursorAnim=
function(F,G)local H,I=F.GuiElems.Cursor,tick()F.LastAnimTime=I if not G then
return end B.Invis:Cancel()B.Vis:Cancel()H.BackgroundTransparency=0 coroutine.
wrap(function()while F.Editable do p.FastWait(0.5)if F.LastAnimTime~=I then
return end B.Invis:Play()p.FastWait(0.5)if F.LastAnimTime~=I then return end B.
Vis:Play()end end)()end r.MoveCursor=function(F,G,H)F.CursorX=G F.CursorY=H F:
UpdateCursor()F:JumpToCursor()end r.JumpToCursor=function(F)F:Refresh()end r.
UpdateCursor=function(F,G)local H,I=F.GuiElems.LinesFrame,F.GuiElems.Cursor
local J,K=math.max(0,H.AbsoluteSize.X),math.max(0,H.AbsoluteSize.Y)local L,M,N,O
,P,Q=math.ceil(K/F.FontSize),math.ceil(J/math.ceil(F.FontSize/2)),F.ViewX,F.
ViewY,tostring(#F.Lines),math.ceil(F.FontSize/2)local R=#P*Q+4*Q if G then local
S=F.GuiElems.LinesFrame local T,U,V,W,X,Y=S.AbsolutePosition.X,S.
AbsolutePosition.Y,G.Position.X,G.Position.Y,math.ceil(F.FontSize/2),F.FontSize
F.CursorX=F.ViewX+math.round((V-T)/X)F.CursorY=F.ViewY+math.floor((W-U)/Y)end
local S,T=F.CursorX,F.CursorY local U=F.Lines[T+1]or''if S>#U then S=#U elseif S
<0 then S=0 end if T>=#F.Lines then T=math.max(0,#F.Lines-1)elseif T<0 then T=0
end S=S+F:TabAdjust(S,T)F.CursorX=S F.CursorY=T local V=(S>=N)and(T>=O)and(S<=N+
M)and(T<=O+L)if V then local W,X=(S-N),(T-O)I.Position=UDim2.new(0,R+W*math.
ceil(F.FontSize/2)-1,0,X*F.FontSize)I.Size=UDim2.new(0,1,0,F.FontSize+2)I.
Visible=true F:CursorAnim(true)else I.Visible=false end end r.MapNewLines=
function(F)local G,H,I,J,K={},1,F.Text,string.find,1 local L=J(I,'\n',K,true)
while L do G[H]=L H=H+1 K=L+1 L=J(I,'\n',K,true)end F.NewLines=G end r.
PreHighlight=function(F)local G=F.Text:gsub('\\\\','  ')local H,I,J,K,L,M=#G,{},
{},{},string.find,string.sub F.ColoredLines={}local N=function(N,O,P,Q)local R,S
=#I+1,1 local T,U,V=L(N,O,S,Q)while T do I[R]=T J[T]=P if V then K[T]=V end R=R+
1 S=U+1 T,U,V=L(N,O,S,Q)end end N(G,'"',1,true)N(G,"'",2,true)N(G,'%[(=*)%[',3)
N(G,'--',4,true)table.sort(I)local O,P,Q,R,S=F.NewLines,0,0,0,{}for T=1,#I do
local U=I[T]if U<=R then continue end local V,W=U,J[U]if W==1 then V=L(G,'"',U+1
,true)while V and M(G,V-1,V-1)=='\\'do V=L(G,'"',V+1,true)end if not V then V=H
end elseif W==2 then V=L(G,"'",U+1,true)while V and M(G,V-1,V-1)=='\\'do V=L(G,
"'",V+1,true)end if not V then V=H end elseif W==3 then _,V=L(G,']'..K[U]..']',U
+1,true)if not V then V=H end elseif W==4 then local X=J[U+2]if X==3 then _,V=L(
G,']'..K[U+2]..']',U+1,true)if not V then V=H end else V=L(G,'\n',U+1,true)or H
end end while U>Q do P=P+1 Q=O[P]or H+1 end while true do local X=S[P]if not X
then X={}S[P]=X end X[U]={W,V}if V>Q then P=P+1 Q=O[P]or H+1 else break end end
R=V end F.PreHighlights=S end r.HighlightLine=function(F,G)local H=F.
ColoredLines[G]if H then return H end local I,J,K,L,M,N,O,P,Q,R,S,T,U=string.sub
,string.find,string.match,{},F.PreHighlights[G]or{},F.Lines[G]or'',0,0,false,0,F
.NewLines[G-1]or 0,{}for V,W in next,M do local X=V-S if X<1 then P=W[1]O=W[2]-S
else T[X]={W[1],W[2]-S}end end for V=1,#N do if V<=O then L[V]=P continue end
local W=T[V]if W then P=W[1]O=W[2]L[V]=P Q=false U=nil R=0 else local X=I(N,V,V)
if J(X,'[%a_]')then local Y=K(N,'[%a%d_]+',V)local Z=(u[Y]and 7)or(v[Y]and 8)O=V
+#Y-1 if Z~=7 then if Q then local _=U and v[U]Z=(_ and type(_)=='table'and _[Y]
and 8)or 10 end if Z~=8 then local _,aa,ab=J(N,'^%s*([%({"\'])',O+1)if _ then Z=
(R>0 and ab=='('and 16)or 9 R=0 end end else Z=t[Y]or Z R=(Y=='function'and 1 or
0)end U=Y Q=false if R>0 then R=1 end if Z then P=Z L[V]=P else P=nil end elseif
J(X,'%p')then local aa=(X=='.')local ab=aa and J(I(N,V+1,V+1),'%d')L[V]=(ab and
6 or 5)if not ab then local Y=aa and K(N,'%.%.?%.?',V)if Y and#Y>1 then P=5 O=V+
#Y-1 Q=false U=nil R=0 else if aa then if Q then U=nil else Q=true end else Q=
false U=nil end R=((aa or X==':')and R==1 and 2)or 0 end end elseif J(X,'%d')
then local aa,ab=J(N,'%x+',V)local Y=I(N,ab,ab+1)if(Y=='e+'or Y=='e-')and J(I(N,
ab+2,ab+2),'%d')then ab=ab+1 end P=6 O=ab L[V]=6 Q=false U=nil R=0 else L[V]=P
local aa,ab=J(N,'%s+',V)if ab then O=ab end end end end F.ColoredLines[G]=L
return L end r.Refresh=function(aa)local ab=aa.Frame.Lines local F,G=math.max(0,
ab.AbsoluteSize.X),math.max(0,ab.AbsoluteSize.Y)local H,I,J,K,L,M,N=math.ceil(G/
aa.FontSize),math.ceil(F/math.ceil(aa.FontSize/2)),string.gsub,string.sub,aa.
ViewX,aa.ViewY,''for O=1,H do local P=aa.LineFrames[O]if not P then P=Instance.
new'Frame'P.Name='Line'P.Position=UDim2.new(0,0,0,(O-1)*aa.FontSize)P.Size=UDim2
.new(1,0,0,aa.FontSize)P.BorderSizePixel=0 P.BackgroundTransparency=1 local Q=
Instance.new'Frame'Q.Name='SelectionHighlight'Q.BorderSizePixel=0 Q.
BackgroundColor3=d.Theme.Syntax.SelectionBack Q.Parent=P Q.
BackgroundTransparency=0.7 local R=Instance.new'TextLabel'R.Name='Label'R.
BackgroundTransparency=1 R.FontFace=aa.FontFace R.TextSize=aa.FontSize R.Size=
UDim2.new(1,0,0,aa.FontSize)R.RichText=true R.TextXAlignment=Enum.TextXAlignment
.Left R.TextColor3=aa.Colors.Text R.ZIndex=2 R.Parent=P P.Parent=ab aa.
LineFrames[O]=P end local Q=M+O local R,S,T,U,V=aa.Lines[Q]or'','',aa:
HighlightLine(Q),L+1,aa.RichTemplates local W,X,Y=V.Text,V.Selection,T[U]local Z
,_=V[s[Y] ]or W,aa.SelectionRange local ac,ad,ae=_[1],_[2],Q-1 if ae>=ac[2]and
ae<=ad[2]then local af,ag=math.ceil(aa.FontSize/2),(ae==ac[2]and ac[1]or 0)-L
local ah=(ae==ad[2]and ad[1]-ag-L or I+L)P.SelectionHighlight.Position=UDim2.
new(0,ag*af,0,0)P.SelectionHighlight.Size=UDim2.new(0,ah*af,1,0)P.
SelectionHighlight.Visible=true else P.SelectionHighlight.Visible=false end for
af=2,I do local ag=L+af local ah=T[ag]if ah~=Y then local ai=V[s[ah] ]or W if ai
~=Z then local aj=J(K(R,U,ag-1),'[\'"<>&]',x)S=S..(Z~=W and(Z..aj..'</font>')or
aj)U=ag Z=ai end Y=ah end end local af=J(K(R,U,L+I),'[\'"<>&]',x)if#af>0 then S=
S..(Z~=W and(Z..af..'</font>')or af)end if aa.Lines[Q]then N=N..(Q-1==aa.CursorY
and('<b>'..Q..'</b>\n')or Q..'\n')end P.Label.Text=S end for ac=H+1,#aa.
LineFrames do aa.LineFrames[ac]:Destroy()aa.LineFrames[ac]=nil end aa.Frame.
LineNumbers.Text=N aa:UpdateCursor()end r.UpdateView=function(aa)local ab,ac=
tostring(#aa.Lines),math.ceil(aa.FontSize/2)local ad,ae=#ab*ac+4*ac,aa.Frame.
Lines local af,ag=ae.AbsoluteSize.X,ae.AbsoluteSize.Y local ah,ai,aj,F=math.
ceil(ag/aa.FontSize),aa.MaxTextCols*ac,aa.ScrollV,aa.ScrollH aj.VisibleSpace=ah
aj.TotalSpace=#aa.Lines+1 F.VisibleSpace=math.ceil(af/ac)F.TotalSpace=aa.
MaxTextCols+1 aj.Gui.Visible=#aa.Lines+1>ah F.Gui.Visible=ai>af local G=aa.
FrameOffsets aa.FrameOffsets=Vector2.new(aj.Gui.Visible and-10 or 0,F.Gui.
Visible and-10 or 0)if G~=aa.FrameOffsets then aa:UpdateView()else aj:ScrollTo(
aa.ViewY,true)F:ScrollTo(aa.ViewX,true)if aj.Gui.Visible and F.Gui.Visible then
aj.Gui.Size=UDim2.new(0,10,1,-10)F.Gui.Size=UDim2.new(1,-10,0,10)aa.GuiElems.
ScrollCorner.Visible=true else aj.Gui.Size=UDim2.new(0,10,1,0)F.Gui.Size=UDim2.
new(1,0,0,10)aa.GuiElems.ScrollCorner.Visible=false end aa.ViewY=aj.Index aa.
ViewX=F.Index aa.Frame.Lines.Position=UDim2.new(0,ad,0,0)aa.Frame.Lines.Size=
UDim2.new(1,-ad+G.X,1,G.Y)aa.Frame.LineNumbers.Position=UDim2.new(0,ac,0,0)aa.
Frame.LineNumbers.Size=UDim2.new(0,#ab*ac,1,G.Y)aa.Frame.LineNumbers.TextSize=aa
.FontSize end end r.ProcessTextChange=function(aa)local ab,ac=0,aa.Lines for ad=
1,#ac do local ae=#ac[ad]if ae>ab then ab=ae end end aa.MaxTextCols=ab aa:
UpdateView()aa.Text=table.concat(aa.Lines,'\n')aa:MapNewLines()aa:PreHighlight()
aa:Refresh()end r.ConvertText=function(aa,ab,ac)if ac then local ad=ab:gsub('\t'
,'    ')return ad:gsub('\t',(' %s%s '):format(y,y))else return ab:gsub((' %s%s '
):format(y,y),'\t')end end r.GetText=function(aa)local ab=table.concat(aa.Lines,
'\n')return aa:ConvertText(ab,false)end r.SetText=function(aa,ab)ab=aa:
ConvertText(ab,true)local ac=aa.Lines table.clear(ac)local ad=1 for ae in ab:
gmatch'([^\n\r]*)[\n\r]?'do ac[ad]=ae ad=ad+1 end aa:ProcessTextChange()end r.
ClearText=function(aa)local ab,ac=aa:ConvertText('',true),aa.Lines table.clear(
ac)local ad=1 for ae in ab:gmatch'([^\n\r]*)[\n\r]?'do ac[ad]=ae ad=ad+1 end aa:
ProcessTextChange()end r.CompileText=function(aa)local ab=pcall(function()local
ab=table.concat(aa.Lines,'\n')local ac=aa:ConvertText(ab,false)loadstring(ac)()
end)return ab end r.ReturnErrors=function(aa)local ab,ac=pcall(function()local
ab=table.concat(aa.Lines,'\n')local ac=aa:ConvertText(ab,false)loadstring(ac)()
end)return not ab and ac or nil end r.GetVersion=function(aa)return b end r.
MakeRichTemplates=function(aa)local ab,ac=math.floor,{}for ad,ae in pairs(aa.
Colors)do ac[ad]=('<font color="rgb(%s,%s,%s)">'):format(ab(ae.r*255),ab(ae.g*
255),ab(ae.b*255))end aa.RichTemplates=ac end r.ApplyTheme=function(aa)local ab=
d.Theme.Syntax aa.Colors=ab aa.Frame.LineNumbers.TextColor3=ab.Text aa.Frame.
BackgroundColor3=ab.Background end local aa={__index=r}local ab=function(ab)ab=
ab or{}if not w then C()end local ac,ad=p.ScrollBar.new(),p.ScrollBar.new(true)
ad.Gui.Position=UDim2.new(0,0,1,-10)local ae={FontFace=Font.fromEnum(Enum.Font.
Code),FontSize=14,ViewX=0,ViewY=0,Colors=d.Theme.Syntax,ColoredLines={},Lines={
''},LineFrames={},Editable=true,Editing=false,CursorX=0,CursorY=0,FloatCursorX=0
,Text='',PreHighlights={},SelectionRange={{-1,-1},{-1,-1}},NewLines={},
FrameOffsets=Vector2.new(0,0),MaxTextCols=0,ScrollV=ac,ScrollH=ad}local af=n(ae,
ab)local ag=setmetatable(af,aa)r.SetTextMultiplier=(function(ah)ag.FontSize=ah
end)r.GetTextMultiplier=(function()return ag.FontSize end)ac.WheelIncrement=3 ad
.Increment=2 ad.WheelIncrement=7 ac.Scrolled:Connect(function()ag.ViewY=ac.Index
ag:Refresh()end)ad.Scrolled:Connect(function()ag.ViewX=ad.Index ag:Refresh()end)
ag:MakeEditorFrame(ag)ag:MakeRichTemplates()ag:ApplyTheme()ac:SetScrollFrame(ag.
Frame.Lines)ac.Gui.Parent=ag.Frame ad.Gui.Parent=ag.Frame ag:UpdateView()ag:
SetText(af.Text)ag.Frame:GetPropertyChangedSignal'AbsoluteSize':Connect(function
()ag:UpdateView()ag:Refresh()end)return ag end return{new=ab}end)()return p end
function a.b()local aa,ab,ac={Services={},OnInitConnections={}},get_hidden_gui
or gethui,cloneref or function(aa)return aa end local ad=aa.Services
setmetatable(ad,{__index=function(ae,af)local ag=game:GetService(af)return ac(ag
)end})local ae,af=(ad.CoreGui)function aa:AddOnInit(ag)local ah=self.
OnInitConnections table.insert(ah,ag)end function aa:CallOnInitConnections(ag,
...)local ah=self.OnInitConnections af=ag for ai,aj in next,ah do aj(af,...)end
end function aa:SetProperties(ag,ah)for ai,aj in next,ah do pcall(function()ag[
ai]=aj end)end end function aa:NewClass(ag,ah)ah=ah or{}ag.__index=ag return
setmetatable(ah,ag)end function aa:CheckConfig(ag,ah,ai,aj)if not ag then return
end for b,c in next,ah do if ag[b]~=nil then continue end if aj then if table.
find(aj,b)then continue end end if ai then c=c()end ag[b]=c end return ag end
function aa:ResolveUIParent()local ag,ah=af.PlayerGui,af.Debug local ai,aj={[1]=
function()local ai=ab()if ai.Parent==ae then return end return ai end,[2]=
function()return ae end,[3]=function()return ag end},af:CreateInstance
'ScreenGui'for b,c in next,ai do local d,e=pcall(c)if not d or not e then
continue end local f=pcall(function()aj.Parent=e end)if not f then continue end
if ah then af:Warn(`Step: {b} was chosen as the parent!: {e}`)end return e end
af:Warn'The ReGui container does not have a parent defined'return nil end
function aa:GetChildOfClass(ag,ah)local ai=ag:FindFirstChildOfClass(ah)if not ai
then ai=af:CreateInstance(ah,ag)end return ai end function aa:CheckAssetUrl(ag)
if tonumber(ag)then return`rbxassetid://{ag}`end return ag end function aa:
SetPadding(ag,ah)if not ag then return end self:SetProperties(ag,{PaddingBottom=
ah,PaddingLeft=ah,PaddingRight=ah,PaddingTop=ah})end return aa end function a.c(
)local aa,ab=a.load'b',{DefaultTweenInfo=TweenInfo.new(0.08)}local ac=aa.
Services local ad=ac.TweenService function ab:Tween(ae)local af,ag,ah=self.
DefaultTweenInfo,ae.Object,ae.NoAnimation local ai,aj,b,c=ae.Tweeninfo or af,ae.
EndProperties,ae.StartProperties,ae.Completed if b then aa:SetProperties(ag,b)
end if ah then aa:SetProperties(ag,aj)if c then c()end return end local d for e,
f in next,aj do local g={[e]=f}local h,i=pcall(function()return ad:Create(ag,ai,
g)end)if not h then aa:SetProperties(ag,g)continue end if not d then d=i end i:
Play()end if c then if d then d.Completed:Connect(c)else c()end end return d end
function ab:Animate(ae)local af,ag,ah,ai,aj=ae.NoAnimation,ae.Objects,ae.
Tweeninfo,(ae.Completed)for b,c in next,ag do local d=self:Tween{NoAnimation=af,
Object=b,Tweeninfo=ah,EndProperties=c}if not aj then aj=d end end if ai then aj.
Completed:Connect(ai)end return aj end function ab:HeaderCollapseToggle(ae)aa:
CheckConfig(ae,{Rotations={Open=90,Closed=0}})local af,ag,ah,ai,aj=ae.Toggle,ae.
NoAnimation,ae.Rotations,ae.Collapsed,ae.Tweeninfo local b=ai and ah.Closed or
ah.Open self:Tween{Tweeninfo=aj,NoAnimation=ag,Object=af,EndProperties={Rotation
=b}}end function ab:HeaderCollapse(ae)local af,ag,ah,ai,aj,b,c,d,e,f,g=ae.
Tweeninfo,ae.Collapsed,ae.ClosedSize,ae.OpenSize,ae.Toggle,ae.Resize,ae.Hide,ae.
NoAnimation,ae.NoAutomaticSize,ae.IconRotations,ae.Completed if not e then b.
AutomaticSize=Enum.AutomaticSize.None end if not ag then c.Visible=true end self
:HeaderCollapseToggle{Tweeninfo=af,Collapsed=ag,NoAnimation=d,Toggle=aj,
Rotations=f}local h=self:Tween{Tweeninfo=af,NoAnimation=d,Object=b,
StartProperties={Size=ag and ai or ah},EndProperties={Size=ag and ah or ai},
Completed=function()c.Visible=not ag if g then g()end if ag then return end if e
then return end b.Size=UDim2.fromScale(1,0)b.AutomaticSize=Enum.AutomaticSize.Y
end}return h end return ab end function a.d()local aa={}aa.__index=aa local ab=a
.load'b'function aa:Fire(...)local ac=self:GetConnections()if#ac<=0 then return
end for ad,ae in next,ac do ae(...)end end function aa:GetConnections()local ac=
self.Connections return ac end function aa:Connect(ac)local ad=self:
GetConnections()table.insert(ad,ac)end function aa:DisconnectConnections()local
ac=self:GetConnections()table.clear(ac)end function aa:NewSignal()return ab:
NewClass(aa,{Connections={}})end return aa end function a.e()return function(aa)
local ab=aa:Window{Title='Configuration saving',Size=UDim2.fromOffset(300,200)}
local ac,ad=(ab:Row())ac:Button{Text='Dump Ini',Callback=function()print(aa:
DumpIni(true))end}ac:Button{Text='Save Ini',Callback=function()ad=aa:DumpIni(
true)end}ac:Button{Text='Load Ini',Callback=function()if not ad then warn
'No save data!'return end aa:LoadIni(ad,true)end}ab:Separator()ab:SliderInt{
IniFlag='MySlider',Value=5,Minimum=1,Maximum=32}ab:Checkbox{IniFlag='MyCheckbox'
,Value=true}ab:InputText{IniFlag='MyInput',Value='Hello world!'}ab:Keybind{
IniFlag='MyKeybind',Label='Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={
Enum.UserInputType.MouseButton1,Enum.KeyCode.Q}}local ae=aa:TabsWindow{Title=
'Tabs window!',Visible=false,Size=UDim2.fromOffset(300,200)}for af,ag in{
'Avocado','Broccoli','Cucumber'}do local ah=ae:CreateTab{Name=ag}ah:Label{Text=`This is the {
ag} tab!`}end local af=aa.Elements:Label{Parent=aa.Container.Windows,Visible=
false,UiPadding=UDim.new(0,8),CornerRadius=UDim.new(0,2),Position=UDim2.
fromOffset(10,10),Size=UDim2.fromOffset(250,50),Border=true,BorderThickness=1,
BorderColor=aa.Accent.Gray,BackgroundTransparency=0.4,BackgroundColor3=aa.Accent
.Black}game:GetService'RunService'.RenderStepped:Connect(function(ag)local ah,ai
,aj=math.round(1/ag),DateTime.now():FormatLocalTime('dddd h:mm:ss A','en-us'),`ReGui {
aa:GetVersion()}\n`aj..=`FPS: {ah}\n`aj..=`The time is {ai}`af.Text=aj end)local
ag=aa:Window{Title='Dear ReGui Demo',Size=UDim2.new(0,400,0,300),NoScroll=true}:
Center()local ah=ag:MenuBar()local ai=ah:MenuItem{Text='Menu'}ai:Selectable{Text
='New'}ai:Selectable{Text='Open'}ai:Selectable{Text='Save'}ai:Selectable{Text=
'Save as'}ai:Selectable{Text='Exit',Callback=function()ag:Close()end}local aj=ah
:MenuItem{Text='Examples'}aj:Selectable{Text='Print hello world',Callback=
function()print'Hello world!'end}aj:Selectable{Text='Tabs window',Callback=
function()ae:ToggleVisibility()end}aj:Selectable{Text='Configuration saving',
Callback=function()ab:ToggleVisibility()end}aj:Selectable{Text='Watermark',
Callback=function()af.Visible=not af.Visible end}ag:Label{Text=`Dear ReGui says hello! ({
aa:GetVersion()})`}local b=ag:ScrollingCanvas{Fill=true,UiPadding=UDim.new(0,0)}
local c=b:CollapsingHeader{Title='Help'}c:Separator{Text='ABOUT THIS DEMO:'}c:
BulletText{Rows={
[[Sections below are demonstrating many aspects of the library.]]}}c:Separator{
Text='PROGRAMMER GUIDE:'}c:BulletText{Rows={
[[See example FAQ, examples, and documentation at https://depso.gitbook.io/regui]]
}}c:Indent():BulletText{Rows={'See example applications in the /demo folder.'}}
local d=b:CollapsingHeader{Title='Configuration'}local e=d:TreeNode{Title=
'Backend Flags'}e:Checkbox{Label='ReGui:IsMobileDevice',Disabled=true,Value=aa:
IsMobileDevice()}e:Checkbox{Label='ReGui:IsConsoleDevice',Disabled=true,Value=aa
:IsConsoleDevice()}local f=d:TreeNode{Title='Style'}f:Combo{Selected='DarkTheme'
,Label='Colors',Items=aa.ThemeConfigs,Callback=function(g,h)ag:SetTheme(h)end}
local g,h=b:CollapsingHeader{Title='Window options'}:Table{MaxColumns=3}:
NextRow(),{NoResize=false,NoTitleBar=false,NoClose=false,NoCollapse=false,
OpenOnDoubleClick=true,NoBringToFrontOnFocus=false,NoMove=false,NoSelect=false,
NoScrollBar=false,NoBackground=false}for i,j in pairs(h)do local k=g:NextColumn(
)k:Checkbox{Value=j,Label=i,Callback=function(l,m)ag:UpdateConfig{[i]=m}end}end
local i,j,n=b:CollapsingHeader{Title='Widgets'},{'Basic','Tooltips','Tree Nodes'
,'Collapsing Headers','Bullets','Text','Images','Videos','Combo','Tabs',
'Plot widgets','Multi-component Widgets','Progress Bars','Picker Widgets',
'Code editor','Console','List layout','Indent','Viewport','Keybinds','Input',
'Text Input'},{Basic=function(i)i:Separator{Text='General'}local j=i:Row()local
k=j:Label{Text='Thanks for clicking me!',Visible=false,LayoutOrder=2}j:Button{
Callback=function()k.Visible=not k.Visible end}i:Checkbox()local l=i:Row()l:
Radiobox{Label='radio a'}l:Radiobox{Label='radio b'}l:Radiobox{Label='radio c'}
local m=i:Row()for n=1,7 do local o=n/7 m:Button{Text='Click',BackgroundColor3=
Color3.fromHSV(o,0.6,0.6)}end local n=i:Button{Text='Tooltip'}aa:SetItemTooltip(
n,function(o)o:Label{Text='I am a tooltip'}end)i:Separator{Text='Inputs'}i:
InputText{Value='Hello world!'}i:InputText{Placeholder='Enter text here',Label=
'Input text (w/ hint)',Value=''}i:InputInt{Value=50}i:InputInt{Label=
'Input Int (w/ limit)',Value=5,Maximum=10,Minimum=1}i:Separator{Text='Drags'}i:
DragInt()i:DragInt{Maximum=100,Minimum=0,Label='Drag Int 0..100',Format='%d%%'}i
:DragFloat{Maximum=1,Minimum=0,Value=0.5}i:Separator{Text='Sliders'}i:SliderInt{
Format='%.d/%s',Value=5,Minimum=1,Maximum=32,ReadOnly=false}:SetValue(8)i:
SliderInt{Label='Slider Int (w/ snap)',Value=1,Minimum=1,Maximum=8,Type='Snap'}i
:SliderFloat{Label='Slider Float',Minimum=0,Maximum=1,Format='Ratio = %.3f'}i:
SliderFloat{Label='Slider Angle',Minimum=-360,Maximum=360,Format='%.f deg'}i:
SliderEnum{Items={'Fire','Earth','Air','Water'},Value=2}i:SliderEnum{Items={
'Fire','Earth','Air','Water'},Value=2,Disabled=true,Label='Disabled Enum'}i:
SliderProgress{Label='Progress Slider',Value=8,Minimum=1,Maximum=32}i:Separator{
Text='Selectors/Pickers'}i:InputColor3{Value=aa.Accent.Light,Label='Color 1'}i:
SliderColor3{Value=aa.Accent.Light,Label='Color 2'}i:InputCFrame{Value=CFrame.
new(1,1,1),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(200,100,50),Label=
'CFrame 1'}i:SliderCFrame{Value=CFrame.new(1,1,1),Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(200,100,50),Label='CFrame 2'}i:Combo{Selected=1,Items={'AAAA'
,'BBBB','CCCC','DDDD','EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}
end,Tooltips=function(i)i:Separator{Text='General'}local j=i:Button{Text='Basic'
,Size=UDim2.fromScale(1,0)}aa:SetItemTooltip(j,function(k)k:Label{Text=
'I am a tooltip'}end)local k=i:Button{Text='Fancy',Size=UDim2.fromScale(1,0)}aa:
SetItemTooltip(k,function(l)l:Label{Text='I am a fancy tooltip'}l:Image{Image=
18395893036}local m=l:Label()while wait()do m.Text=`Sin(time) = {math.sin(tick()
)}`end end)local l=i:Button{Text='Double tooltip',Size=UDim2.fromScale(1,0)}for
m=1,3 do aa:SetItemTooltip(l,function(n)n:Label{Text=`I am tooltip {m}`}end)end
end,Videos=function(i)local j=i:VideoPlayer{Video=5608327482,Looped=true,Ratio=
1.7777777777777777,RatioAspectType=Enum.AspectType.FitWithinMaxSize,RatioAxis=
Enum.DominantAxis.Width,Size=UDim2.fromScale(1,1)}j:Play()local l=i:Row{Expanded
=true}l:Button{Text='Pause',Callback=function()j:Pause()end}l:Button{Text='Play'
,Callback=function()j:Play()end}if not j.IsLoaded then j.Loaded:Wait()end local
m=l:SliderInt{Format='%.f',Value=0,Minimum=0,Maximum=j.TimeLength,Callback=
function(m,n)j.TimePosition=n end}game:GetService'RunService'.RenderStepped:
Connect(function(n)m:SetValue(j.TimePosition)end)end,['Tree Nodes']=function(i)
for j=1,5 do local l=i:TreeNode{Title=`Child {j}`,Collapsed=j~=1}local m=l:Row()
m:Label{Text='Blah blah'}m:SmallButton{Text='Button'}end i:TreeNode{Title=`With icon & NoArrow`
,NoArrow=true,Icon=aa.Icons.Image}end,['Collapsing Headers']=function(i)local j
i:Checkbox{Value=true,Label='Show 2nd header',Callback=function(l,m)if j then j:
SetVisible(m)end end}i:Checkbox{Value=true,Label='2nd has arrow',Callback=
function(l,m)if j then j:SetArrowVisible(m)end end}local l=i:CollapsingHeader{
Title='Header'}for m=1,5 do l:Label{Text=`Some content {m}`}end j=i:
CollapsingHeader{Title='Second Header'}for m=1,5 do j:Label{Text=`More content {
m}`}end end,Bullets=function(i)i:BulletText{Rows={'Bullet point 1',
'Bullet point 2\nOn multiple lines'}}i:TreeNode():BulletText{Rows={
'Another bullet point'}}i:Bullet():Label{Text='Bullet point 3 (two calls)'}i:
Bullet():SmallButton()end,Text=function(i)local j=i:TreeNode{Title=
'Colorful Text'}j:Label{TextColor3=Color3.fromRGB(255,0,255),Text='Pink',NoTheme
=true}j:Label{TextColor3=Color3.fromRGB(255,255,0),Text='Yellow',NoTheme=true}j:
Label{TextColor3=Color3.fromRGB(59,59,59),Text='Disabled',NoTheme=true}local l=i
:TreeNode{Title='Word Wrapping'}l:Label{Text=
[[This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.]]
,TextWrapped=true}local m l:SliderInt{Label='Wrap width',Value=400,Minimum=20,
Maximum=600,Callback=function(n,o)if not m then return end m.Size=UDim2.
fromOffset(o,0)end}l:Label{Text='Test paragraph:'}m=l:Label{Text=
[[The lazy dog is a good dog. This paragraph should fit. Testing a 1 character word. The quick brown fox jumps over the lazy dog.]]
,TextWrapped=true,Border=true,BorderColor=Color3.fromRGB(255,255,0),
AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.fromOffset(400,0)}end,Images=
function(i)i:Label{TextWrapped=true,Text=
[[Below we are displaying the icons (which are the ones builtin to ReGui in this demo). Hover the texture for a zoomed view!]]
}i:Label{TextWrapped=true,Text=`There is a total of {aa:GetDictSize(aa.Icons)} icons in this demo!`
}local j,l,m=(i:List{Border=true})aa:SetItemTooltip(j,function(n)l=n:Label()m=n:
Image{Size=UDim2.fromOffset(50,50)}end)for n,o in aa.Icons do local p=j:Image{
Image=o,Size=UDim2.fromOffset(30,30)}aa:DetectHover(p,{MouseEnter=true,OnInput=
function()l.Text=n m.Image=o end})end end,Tabs=function(i)local j=i:TreeNode{
Title='Basic'}local l,m=j:TabSelector(),{'Avocado','Broccoli','Cucumber'}for n,o
in next,m do l:CreateTab{Name=o}:Label{Text=`This is the {o} tab!\nblah blah blah blah blah`
}end local n=i:TreeNode{Title='Advanced & Close Button'}local o,p=n:TabSelector(
),{'Artichoke','Beetroot','Celery','Daikon'}for q,r in next,p do local s=o:
CreateTab{Name=r,Closeable=true}s:Label{Text=`This is the {r} tab!\nblah blah blah blah blah`
}end n:Button{Text='Add tab',Callback=function()o:CreateTab{Closeable=true}:
Label{Text='I am an odd tab.'}end}end,['Plot widgets']=function(i)local j=i:
PlotHistogram{Points={0.6,0.1,1,0.5,0.92,0.1,0.2}}i:Button{Text=
'Generate new graph',Callback=function()local n={}for o=1,math.random(5,10)do
table.insert(n,math.random(1,10))end j:PlotGraph(n)end}end,[
'Multi-component Widgets']=function(i)i:Separator{Text='2-wide'}i:InputInt2{
Value={10,50},Minimum={0,0},Maximum={20,100},Callback=function(j,n)print('1:',n[
1],'2:',n[2])end}i:SliderInt2()i:SliderFloat2()i:DragInt2()i:DragFloat2()i:
Separator{Text='3-wide'}i:InputInt3()i:SliderInt3()i:SliderFloat3()i:DragInt3()i
:DragFloat3()i:Separator{Text='4-wide'}i:InputInt4()i:SliderInt4()i:
SliderFloat4()i:DragInt4()i:DragFloat4()end,['Progress Bars']=function(i)local j
=i:ProgressBar{Label='Loading...',Value=80}spawn(function()local n=0 while wait(
0.02)do n+=1 j:SetPercentage(n%100)end end)end,['Picker Widgets']=function(i)i:
Separator{Text='Color pickers'}i:DragColor3{Value=aa.Accent.Light}i:SliderColor3
{Value=aa.Accent.Red}i:InputColor3{Value=aa.Accent.Green}i:Separator{Text=
'CFrame pickers'}i:DragCFrame{Value=CFrame.new(1,1,1),Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(200,100,50)}i:SliderCFrame()i:InputCFrame()end,['Code editor'
]=function(i)i:CodeEditor{Text='print("Hello from ReGui\'s editor!")',Editable=
true}end,Console=function(i)local j=i:TreeNode{Title='Basic'}local n,o=j:Console
{ReadOnly=true,AutoScroll=true,MaxLines=50},i:TreeNode{Title=
'Advanced & RichText'}local p,q=o:Console{ReadOnly=true,AutoScroll=true,RichText
=true,MaxLines=50},i:TreeNode{Title='Editor'}q:Console{Value=
"print('Hello world!')",LineNumbers=true}coroutine.wrap(function()while wait()do
local r=DateTime.now():FormatLocalTime('h:mm:ss A','en-us')p:AppendText(`<font color="rgb(240, 40, 10)">[Random]</font>`
,math.random())n:AppendText(`[{r}] Hello world!`)end end)()end,Combo=function(i)
i:Combo{WidthFitPreview=true,Label='WidthFitPreview',Selected=1,Items={
'AAAAAAAAAAAA','BBBBBBBB','CCCCC','DDD'}}i:Separator{Text='One-liner variants'}i
:Combo{Label='Combo 1 (array)',Selected=1,Items={'AAAA','BBBB','CCCC','DDDD',
'EEEE','FFFF','GGGG','HHHH','IIIIIII','JJJJ','KKKKKKK'}}i:Combo{Label=
'Combo 1 (dict)',Selected='AAA',Items={AAA='Apple',BBB='Banana',CCC='Orange'},
Callback=print}i:Combo{Label='Combo 2 (function)',Selected=1,GetItems=function()
return{'aaa','bbb','ccc'}end}end,Indent=function(i)i:Label{Text=
'This is not indented'}local j=i:Indent{Offset=30}j:Label{Text=
'This is indented by 30 pixels'}local n=j:Indent{Offset=30}n:Label{Text=
'This is indented by 30 more pixels'}end,Viewport=function(i)local j=aa:
InsertPrefab'R15 Rig'local n=i:Viewport{Size=UDim2.new(1,0,0,200),Clone=true,
Model=j}local o=n.Model o:PivotTo(CFrame.new(0,-2.5,-5))local p=game:GetService
'RunService'p.RenderStepped:Connect(function(q)local r=CFrame.Angles(0,math.rad(
30*q),0)local s=o:GetPivot()*r o:PivotTo(s)end)end,['List layout']=function(i)
local j=i:List()for n=1,10 do j:Button{Text=`Resize the window! {n}`}end end,
Keybinds=function(i)local j=i:Checkbox{Value=true}i:Keybind{Label=
'Toggle checkbox',IgnoreGameProcessed=false,OnKeybindSet=function(n,o)warn(
'[OnKeybindSet] .Value ->',o)end,Callback=function(n,o)print(o)j:Toggle()end}i:
Keybind{Label='Keybind (w/ Q & Left-Click blacklist)',KeyBlacklist={Enum.
UserInputType.MouseButton1,Enum.KeyCode.Q}}i:Keybind{Label=
'Toggle UI visibility',Value=Enum.KeyCode.E,Callback=function()ag:
ToggleVisibility()end}end,Input=function(i)i:InputText{Label='One Line Text'}i:
InputTextMultiline{Label='Multiline Text'}i:InputInt{Label='Input int'}end,[
'Text Input']=function(i)local j=i:TreeNode{Title='Multiline'}j:
InputTextMultiline{Size=UDim2.new(1,0,0,117),Value=
'/*The Pentium FOOF bug, shorthand for FO OF C7 C8,\r\n    the hexadecimal encoding of one offending instruction,\r\n    more formally, the invalid operand with locked CMPXCHG8B\r\n    instruction bug, is a design flaw in the majority of\r\n    Intel Pentium, Pentium MMX, and Pentium OverDrive\r\n    processors (all in the P5 microarchitecture).#\r\n    */'
}end}for o,p in j do local q,r=i:TreeNode{Title=p},n[p]if r then task.spawn(r,q)
end end local o=b:CollapsingHeader{Title='Popups & child windows'}local p=o:
TreeNode{Title='Popups'}local q=p:Row()local r=q:Label{Text='<None>',LayoutOrder
=2}q:Button{Text='Select..',Callback=function(s)local t,u={'Bream','Haddock',
'Mackerel','Pollock','Tilefish'},p:PopupCanvas{RelativeTo=s,MaxSizeX=200}u:
Separator{Text='Aquarium'}for v,w in t do u:Selectable{Text=w,Callback=function(
x)r.Text=w u:ClosePopup()end}end end}local s=o:TreeNode{Title='Child windows'}
local t=s:Window{Size=UDim2.fromOffset(300,200),NoMove=true,NoClose=true,
NoCollapse=true,NoResize=true}t:Label{Text='Hello, world!'}t:Button{Text='Save'}
t:InputText{Label='string'}t:SliderFloat{Label='float',Minimum=0,Maximum=1}local
u=o:TreeNode{Title='Modals'}u:Label{Text=
[[Modal windows are like popups but the user cannot close them by clicking outside.]]
,TextWrapped=true}u:Button{Text='Delete..',Callback=function()local v=u:
PopupModal{Title='Delete?'}v:Label{Text=
[[All those beautiful files will be deleted.
This operation cannot be undone!]],
TextWrapped=true}v:Separator()v:Checkbox{Value=false,Label=
"Don't ask me next time"}local w=v:Row{Expanded=true}w:Button{Text='Okay',
Callback=function()v:ClosePopup()end}w:Button{Text='Cancel',Callback=function()v
:ClosePopup()end}end}u:Button{Text='Stacked modals..',Callback=function()local v
=u:PopupModal{Title='Stacked 1'}v:Label{Text=`Hello from Stacked The First\nUsing Theme["ModalWindowDimBg"] behind it.`
,TextWrapped=true}v:Combo{Items={'aaaa','bbbb','cccc','dddd','eeee'}}v:
DragColor3{Value=Color3.fromRGB(102,178,0)}v:Button{Text='Add another modal..',
Callback=function()local w=u:PopupModal{Title='Stacked 2'}w:Label{Text=
'Hello from Stacked The Second!',TextWrapped=true}w:DragColor3{Value=Color3.
fromRGB(102,178,0)}w:Button{Text='Close',Callback=function()w:ClosePopup()end}
end}v:Button{Text='Close',Callback=function()v:ClosePopup()end}end}local v=b:
CollapsingHeader{Title='Tables & Columns'}local w=v:TreeNode{Title='Basic'}local
x=w:Table()for y=1,3 do local z=x:Row()for A=1,3 do local B=z:Column()for C=1,4
do B:Label{Text=`Row {C} Column {A}`}end end end local y=v:TreeNode{Title=
'Borders, background'}local z=y:Table{RowBackground=true,Border=true,MaxColumns=
3}for A=1,5 do local B=z:NextRow()for C=1,3 do local D=B:NextColumn()D:Label{
Text=`Hello {C},{A}`}end end local A=v:TreeNode{Title='With headers'}local B,C=A
:Table{Border=true,RowBackground=true,MaxColumns=3},{'One','Two','Three'}for D=1
,7 do if D==1 then q=B:HeaderRow()else q=B:Row()end for E,F in C do if D==1 then
local G=q:Column()G:Label{Text=F}continue end local G=q:NextColumn()G:Label{Text
=`Hello {E},{D}`}end end end end function a.f()return{Dot=
'rbxasset://textures/whiteCircle.png',Arrow=
'rbxasset://textures/ui/AvatarContextMenu_Arrow.png',Close=
'rbxasset://textures/loading/cancelButton.png',Checkmark=
'rbxasset://textures/ui/Lobby/Buttons/nine_slice_button.png',Cat=
'rbxassetid://16211812161',Script='rbxassetid://11570895459',Settings=
'rbxassetid://9743465390',Info='rbxassetid://18754976792',Move=
'rbxassetid://6710235139',Roblox='rbxassetid://7414445494',Warning=
'rbxassetid://11745872910',Audio='rbxassetid://302250236',Shop=
'rbxassetid://6473525198',CharacterDance='rbxassetid://11932783331',Pants=
'rbxassetid://10098755331',Home='rbxassetid://4034483344',Robux=
'rbxassetid://5986143282',Badge='rbxassetid://16170504068',SpawnLocation=
'rbxassetid://6400507398',Sword='rbxassetid://7485051715',Clover=
'rbxassetid://11999300014',Star='rbxassetid://3057073083',Code=
'rbxassetid://11348555035',Paw='rbxassetid://13001190533',Shield=
'rbxassetid://7461510428',Shield2='rbxassetid://7169354142',File=
'rbxassetid://7276823330',Book='rbxassetid://16061686835',Location=
'rbxassetid://13549782519',Puzzle='rbxassetid://8898417863',Discord=
'rbxassetid://84828491431270',Premium='rbxassetid://6487178625',Friend=
'rbxassetid://10885655986',User='rbxassetid://18854794412',Duplicate=
'rbxassetid://11833749507',ChatBox='rbxassetid://15839118471',ChatBox2=
'rbxassetid://15839116089',Devices='rbxassetid://4458812712',Weight=
'rbxassetid://9855685269',Image='rbxassetid://123311808092347',Profile=
'rbxassetid://13585614795',Admin='rbxassetid://11656483170',PaintBrush=
'rbxassetid://12111879608',Speed='rbxassetid://12641434961',NoConnection=
'rbxassetid://9795340967',Connection='rbxassetid://119759670842477',Globe=
'rbxassetid://18870359747',Box='rbxassetid://140217940575618',Crown=
'rbxassetid://18826490498',Control='rbxassetid://18979524646',Send=
'rbxassetid://18940312887',FastForward='rbxassetid://112963221295680',Pause=
'rbxassetid://109949100737970',Reload='rbxassetid://11570018242',Joystick=
'rbxassetid://18749336354',Controller='rbxassetid://11894535915',Lock=
'rbxassetid://17783082088',Calculator='rbxassetid://85861816563977',Sun=
'rbxassetid://13492317832',Moon='rbxassetid://8498174594',Prohibited=
'rbxassetid://5248916036',Flag='rbxassetid://251346532',Website=
'rbxassetid://98455290625865',Telegram='rbxassetid://115860270107061',MusicNote=
'rbxassetid://18187351229',Music='rbxassetid://253830398',Headphones=
'rbxassetid://1311321471',Phone='rbxassetid://8411963035',Smartphone=
'rbxassetid://14040313879',Desktop='rbxassetid://3120635703',Desktop2=
'rbxassetid://4728059490',Laptop='rbxassetid://4728059725',Server=
'rbxassetid://9692125126',Wedge='rbxassetid://9086583059',Drill=
'rbxassetid://11959189471',Character='rbxassetid://13285102351'}end function a.g
()return{Light=Color3.fromRGB(50,150,250),Dark=Color3.fromRGB(30,66,115),
ExtraDark=Color3.fromRGB(28,39,53),White=Color3.fromRGB(240,240,240),Gray=Color3
.fromRGB(172,171,175),Black=Color3.fromRGB(15,19,24),Yellow=Color3.fromRGB(230,
180,0),Orange=Color3.fromRGB(230,150,0),Green=Color3.fromRGB(130,188,91),Red=
Color3.fromRGB(255,69,69),ImGui={Light=Color3.fromRGB(66,150,250),Dark=Color3.
fromRGB(41,74,122),Black=Color3.fromRGB(15,15,15),Gray=Color3.fromRGB(36,36,36)}
}end function a.h()local aa,ab=a.load'g',{}ab.DarkTheme={Values={
AnimationTweenInfo=TweenInfo.new(0.08),TextFont=Font.fromEnum(Enum.Font.
RobotoMono),TextSize=14,Text=aa.White,TextDisabled=aa.Gray,ErrorText=aa.Red,
FrameBg=aa.Dark,FrameBgTransparency=0.4,FrameBgActive=aa.Light,
FrameBgTransparencyActive=0.4,FrameRounding=UDim.new(0,0),SliderGrab=aa.Light,
ButtonsBg=aa.Light,CollapsingHeaderBg=aa.Light,CollapsingHeaderText=aa.White,
CheckMark=aa.Light,ResizeGrab=aa.Light,HeaderBg=aa.Gray,HeaderBgTransparency=0.7
,HistogramBar=aa.Yellow,ProgressBar=aa.Yellow,RegionBg=aa.Dark,
RegionBgTransparency=0.1,Separator=aa.Gray,SeparatorTransparency=0.5,
ConsoleLineNumbers=aa.White,LabelPaddingTop=UDim.new(0,0),LabelPaddingBottom=
UDim.new(0,0),MenuBar=aa.ExtraDark,MenuBarTransparency=0.1,PopupCanvas=aa.Black,
TabTextPaddingTop=UDim.new(0,3),TabTextPaddingBottom=UDim.new(0,8),TabText=aa.
Gray,TabBg=aa.Dark,TabTextActive=aa.White,TabBgActive=aa.Light,TabsBarBg=Color3.
fromRGB(36,36,36),TabsBarBgTransparency=1,TabPagePadding=UDim.new(0,8),
ModalWindowDimBg=Color3.fromRGB(230,230,230),ModalWindowDimTweenInfo=TweenInfo.
new(0.2),WindowBg=aa.Black,WindowBgTransparency=0.05,Border=aa.Gray,
BorderTransparency=0.8,BorderTransparencyActive=0.5,Title=aa.White,TitleAlign=
Enum.TextXAlignment.Left,TitleBarBg=aa.Black,TitleBarTransparency=0,TitleActive=
aa.White,TitleBarBgActive=aa.Dark,TitleBarTransparencyActive=0.05,
TitleBarBgCollapsed=Color3.fromRGB(0,0,0),TitleBarTransparencyCollapsed=0.6}}ab.
LightTheme={BaseTheme=ab.DarkTheme,Values={Text=aa.Black,TextFont=Font.fromEnum(
Enum.Font.Ubuntu),TextSize=14,FrameBg=aa.Gray,FrameBgTransparency=0.4,
FrameBgActive=aa.Light,FrameBgTransparencyActive=0.6,SliderGrab=aa.Light,
ButtonsBg=aa.Light,CollapsingHeaderText=aa.Black,Separator=aa.Black,
ConsoleLineNumbers=aa.Yellow,MenuBar=Color3.fromRGB(219,219,219),PopupCanvas=aa.
White,TabText=aa.Black,TabTextActive=aa.Black,WindowBg=aa.White,Border=aa.Gray,
ResizeGrab=aa.Gray,Title=aa.Black,TitleAlign=Enum.TextXAlignment.Center,
TitleBarBg=aa.Gray,TitleActive=aa.Black,TitleBarBgActive=Color3.fromRGB(186,186,
186),TitleBarBgCollapsed=aa.Gray}}ab.ImGui={BaseTheme=ab.DarkTheme,Values={
AnimationTweenInfo=TweenInfo.new(0),Text=Color3.fromRGB(255,255,255),FrameBg=aa.
ImGui.Dark,FrameBgTransparency=0.4,FrameBgActive=aa.ImGui.Light,
FrameBgTransparencyActive=0.5,FrameRounding=UDim.new(0,0),ButtonsBg=aa.ImGui.
Light,CollapsingHeaderBg=aa.ImGui.Light,CollapsingHeaderText=aa.White,CheckMark=
aa.ImGui.Light,ResizeGrab=aa.ImGui.Light,MenuBar=aa.ImGui.Gray,
MenuBarTransparency=0,PopupCanvas=aa.ImGui.Black,TabText=aa.Gray,TabBg=aa.ImGui.
Dark,TabTextActive=aa.White,TabBgActive=aa.ImGui.Light,WindowBg=aa.ImGui.Black,
WindowBgTransparency=0.05,Border=aa.Gray,BorderTransparency=0.7,
BorderTransparencyActive=0.4,Title=aa.White,TitleBarBg=aa.ImGui.Black,
TitleBarTransparency=0,TitleBarBgActive=aa.ImGui.Dark,TitleBarTransparencyActive
=0}}return ab end function a.i()local aa,ab=(a.load'b')aa:AddOnInit(function(ad)
ab=ad end)return{{Properties={'Center'},Callback=function(ad,ae,af)local ag=ae.
Position aa:SetProperties(ae,{Position=UDim2.new(af:find'X'and 0.5 or ag.X.Scale
,ag.X.Offset,af:find'Y'and 0.5 or ag.Y.Scale,ag.Y.Offset),AnchorPoint=Vector2.
new(af:find'X'and 0.5 or 0,af:find'Y'and 0.5 or 0)})end},{Properties={
'ElementStyle'},Callback=function(ad,ae,af)ab:ApplyStyle(ae,af)end},{Properties=
{'ColorTag'},Callback=function(ad,ae,af)local ag,ah=ad.Class,ad.WindowClass
local aj=ag.NoAutoTheme if not ah then return end if aj then return end ab:
UpdateColors{Object=ae,Tag=af,NoAnimation=true,Theme=ah.Theme}end},{Properties={
'Animation'},Callback=function(ad,ae,af)local ag=ad.Class.NoAnimation if ag then
return end ab:SetAnimation(ae,af)end},{Properties={'Image'},Callback=function(ad
,ae,af)local ag=ad.WindowClass ae.Image=aa:CheckAssetUrl(af)ab:DynamicImageTag(
ae,af,ag)end},{Properties={'Icon','IconSize','IconRotation','IconPadding'},
Callback=function(ad,ae,af)local ag=ae:FindFirstChild('Icon',true)if not ag then
ab:Warn('No icon for',ae)return end local ah=ad.Class aa:CheckConfig(ah,{Icon=''
,IconSize=UDim2.fromScale(1,1),IconRotation=0,IconPadding=UDim2.new(0,2)})local
aj=ag.Parent:FindFirstChild'UIPadding'aa:SetPadding(aj,ah.IconPadding)local b=ah
.Icon b=aa:CheckAssetUrl(b)local c=ad.WindowClass ab:DynamicImageTag(ag,b,c)aa:
SetProperties(ag,{Visible=ag~='',Image=aa:CheckAssetUrl(b),Size=ah.IconSize,
Rotation=ah.IconRotation})end},{Properties={'BorderThickness','Border',
'BorderColor'},Callback=function(ad,ae,af)local ag=ad.Class local ah=ag.Border==
true aa:CheckConfig(ag,{BorderTransparency=ad:GetThemeKey
'BorderTransparencyActive',BorderColor=ad:GetThemeKey'Border',BorderThickness=1,
BorderStrokeMode=Enum.ApplyStrokeMode.Border})local aj=aa:GetChildOfClass(ae,
'UIStroke')aa:SetProperties(aj,{Transparency=ag.BorderTransparency,Thickness=ag.
BorderThickness,Color=ag.BorderColor,ApplyStrokeMode=ag.BorderStrokeMode,Enabled
=ah})end},{Properties={'Ratio'},Callback=function(ad,ae,af)local ag=ad.Class aa:
CheckConfig(ag,{Ratio=1.3333333333333333,RatioAxis=Enum.DominantAxis.Height,
RatioAspectType=Enum.AspectType.ScaleWithParentSize})local ah,aj,b,c=ag.Ratio,ag
.RatioAxis,ag.RatioAspectType,aa:GetChildOfClass(ae,'UIAspectRatioConstraint')aa
:SetProperties(c,{DominantAxis=aj,AspectType=b,AspectRatio=ah})end},{Properties=
{'FlexMode'},Callback=function(ad,ae,af)local ag=aa:GetChildOfClass(ae,
'UIFlexItem')ag.FlexMode=af end},{Properties={'CornerRadius'},Callback=function(
ad,ae,af)local ag=aa:GetChildOfClass(ae,'UICorner')ag.CornerRadius=af end},{
Properties={'Fill'},Callback=function(ad,ae,af)if af~=true then return end local
ag=ad.Class aa:CheckConfig(ag,{Size=UDim2.fromScale(1,1),UIFlexMode=Enum.
UIFlexMode.Fill,AutomaticSize=Enum.AutomaticSize.None})local ah=aa:
GetChildOfClass(ae,'UIFlexItem')ah.FlexMode=ag.UIFlexMode ae.Size=ag.Size ae.
AutomaticSize=ag.AutomaticSize end},{Properties={'Label'},Callback=function(ad,
ae,af)local ag,ah=ad.Class,ae:FindFirstChild'Label'if not ah then return end ah.
Text=tostring(af)function ag:SetLabel(aj)ah.Text=aj return self end end},{
Properties={'NoGradient'},WindowProperties={'NoGradients'},Callback=function(ad,
ae,af)local ag=ae:FindFirstChildOfClass'UIGradient'if not ag then return end ag.
Enabled=af end},{Properties={'UiPadding','PaddingBottom','PaddingTop',
'PaddingRight','PaddingTop'},Callback=function(ad,ae,af)af=af or 0 if typeof(af)
=='number'then af=UDim.new(0,af)end local ag=ad.Class local ah=ag.UiPadding if
ah then aa:CheckConfig(ag,{PaddingBottom=af,PaddingLeft=af,PaddingRight=af,
PaddingTop=af})end local aj=aa:GetChildOfClass(ae,'UIPadding')aa:SetProperties(
aj,{PaddingBottom=ag.PaddingBottom,PaddingLeft=ag.PaddingLeft,PaddingRight=ag.
PaddingRight,PaddingTop=ag.PaddingTop})end},{Properties={'Callback'},Callback=
function(ad,ae)local af=ad.Class function af:SetCallback(ag)self.Callback=ag
return self end function af:FireCallback(ag)self.Callback(ae)return self end end
},{Properties={'Value'},Callback=function(ad,ae)local af=ad.Class aa:
CheckConfig(af,{GetValue=function(ag)return af.Value end})end}}end function a.j(
)local aa={}aa.Coloring={MenuBar={BackgroundColor3='MenuBar',
BackgroundTransparency='MenuBarTransparency'},FrameRounding={CornerRadius=
'FrameRounding'},PopupCanvas={BackgroundColor3='PopupCanvas'},ModalWindowDim={
BackgroundColor3='ModalWindowDimBg'},Selectable='Button',MenuButton='Button',
Separator={BackgroundColor3='Separator',BackgroundTransparency=
'SeparatorTransparency'},Region={BackgroundColor3='RegionBg',
BackgroundTransparency='RegionBgTransparency'},Label={TextColor3='Text',FontFace
='TextFont',TextSize='TextSize'},ImageFollowsText={ImageColor3='Text'},
ConsoleLineNumbers={TextColor3='ConsoleLineNumbers',FontFace='TextFont',TextSize
='TextSize'},ConsoleText='Label',LabelDisabled={TextColor3='TextDisabled',
FontFace='TextFont',TextSize='TextSize'},Plot={BackgroundColor3='HistogramBar'},
Header={BackgroundColor3='HeaderBg',BackgroundTransparency=
'HeaderBgTransparency'},WindowTitle={TextXAlignment='TitleAlign',FontFace=
'TextFont',TextSize='TextSize'},TitleBar={BackgroundColor3='TitleBarBgActive'},
Window={BackgroundColor3='WindowBg',BackgroundTransparency=
'WindowBgTransparency'},TitleBarBgCollapsed={BackgroundColor3=
'TitleBarBgCollapsed',BackgroundTransparency='TitleBarTransparencyCollapsed'},
TitleBarBgActive={BackgroundColor3='TitleBarBgActive',BackgroundTransparency=
'TitleBarTransparencyActive'},TitleBarBg={BackgroundColor3='TitleBarBg',
BackgroundTransparency='TitleBarTransparency'},TabsBar={BackgroundColor3=
'TabsBarBg',BackgroundTransparency='TabsBarBgTransparency'},Border={Color=
'Border',Transparency='BorderTransparency'},ResizeGrab={TextColor3='ResizeGrab'}
,BorderActive={Transparency='BorderTransparencyActive'},Frame={BackgroundColor3=
'FrameBg',BackgroundTransparency='FrameBgTransparency',TextColor3='Text',
FontFace='TextFont',TextSize='TextSize'},FrameActive={BackgroundColor3=
'FrameBgActive',BackgroundTransparency='FrameBgTransparencyActive'},SliderGrab={
BackgroundColor3='SliderGrab'},Button={BackgroundColor3='ButtonsBg',TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},CollapsingHeader={FontFace=
'TextFont',TextSize='TextSize',TextColor3='CollapsingHeaderText',
BackgroundColor3='CollapsingHeaderBg'},Checkbox={BackgroundColor3='FrameBg'},
CheckMark={ImageColor3='CheckMark',BackgroundColor3='CheckMark'},RadioButton={
BackgroundColor3='ButtonsBg',TextColor3='Text',FontFace='TextFont',TextSize=
'TextSize'}}aa.Styles={RadioButton={Animation='RadioButtons',CornerRadius=UDim.
new(1,0)},Button={Animation='Buttons'},CollapsingHeader={Animation='Buttons'},
TreeNode={Animation='TransparentButtons'},TransparentButton={Animation=
'TransparentButtons'}}aa.Animations={Invisible={Connections={MouseEnter={Visible
=true},MouseLeave={Visible=false}},Init='MouseLeave'},Buttons={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0.7}}
,Init='MouseLeave'},TextButtons={Connections={MouseEnter={TextTransparency=0.3},
MouseLeave={TextTransparency=0.7}},Init='MouseLeave'},TransparentButtons={
Connections={MouseEnter={BackgroundTransparency=0.3},MouseLeave={
BackgroundTransparency=1}},Init='MouseLeave'},RadioButtons={Connections={
MouseEnter={BackgroundTransparency=0.5},MouseLeave={BackgroundTransparency=1}},
Init='MouseLeave'},Inputs={Connections={MouseEnter={BackgroundTransparency=0},
MouseLeave={BackgroundTransparency=0.5}},Init='MouseLeave'},Plots={Connections={
MouseEnter={BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=0}},
Init='MouseLeave'},Border={Connections={Selected={Transparency=0,Thickness=1},
Deselected={Transparency=0.7,Thickness=1}},Init='Selected'}}return aa end end
local aa,ab,ad,ae,af={Version='1.4.6',Author='Depso',License='MIT',Repository=
'https://github.com/depthso/Dear-ReGui/',Debug=false,PrefabsId=71968920594655,
DefaultTitle='ReGui',ContainerName='ReGui',DoubleClickThreshold=0.3,
TooltipOffset=15,IniToSave={'Value'},ClassIgnored={'Visible','Text'},Container=
nil,Prefabs=nil,FocusedWindow=nil,HasTouchScreen=false,Services=nil,Elements={},
_FlagCache={},_ErrorCache={},Windows={},ActiveTooltips={},IniSettings={},
AnimationConnections={}},a.load'a',a.load'b',a.load'c',a.load'd'aa.DemoWindow=a.
load'e'aa.Services=ad.Services aa.Animation=ae aa.Icons=a.load'f'aa.Accent=a.
load'g'aa.ThemeConfigs=a.load'h'aa.ElementFlags=a.load'i'local ag=a.load'j'aa.
ElementColors=ag.Coloring aa.Animations=ag.Animations aa.Styles=ag.Styles ad:
CallOnInitConnections(aa)aa.DynamicImages={[aa.Icons.Arrow]='ImageFollowsText',[
aa.Icons.Close]='ImageFollowsText',[aa.Icons.Dot]='ImageFollowsText'}local ah=aa
.Services local aj,b,c,d,e=ah.HttpService,ah.Players,ah.UserInputService,ah.
RunService,ah.InsertService local f=b.LocalPlayer aa.PlayerGui=f.PlayerGui aa.
Mouse=f:GetMouse()local g=function()end function GetAndRemove(h,i)local j=i[h]if
j then i[h]=nil end return j end function MoveTableItem(h,i,j)local n=table.
find(h,i)if not n then return end local o=table.remove(h,n)table.insert(h,j,o)
end function Merge(h,i)for j,n in next,i do h[j]=n end end function Copy(h,i)
local j=table.clone(h)if i then Merge(j,i)end return j end function aa:Warn(...)
warn('[ReGui]::',...)end function aa:Error(...)local h=aa:Concat({...},' ')local
i=`\n[ReGui]:: {h}`coroutine.wrap(error)(i)end function aa:IsDoubleClick(h)local
i=self.DoubleClickThreshold return h<i end function aa:StyleContainers()local h=
self.Container local i,j=h.Overlays,h.Windows self:SetProperties(j,{
OnTopOfCoreBlur=true})self:SetProperties(i,{OnTopOfCoreBlur=true})end function
aa:Init(h)h=h or{}if self.Initialised then return end Merge(self,h)Merge(self,{
Initialised=true,HasGamepad=self:IsConsoleDevice(),HasTouchScreen=self:
IsMobileDevice()})self:CheckConfig(self,{ContainerParent=function()return ad:
ResolveUIParent()end,Prefabs=function()return self:LoadPrefabs()end},true)self:
CheckConfig(self,{Container=function()return self:InsertPrefab('Container',{
Parent=self.ContainerParent,Name=self.ContainerName})end},true)local i,j,n=self.
Container,self.TooltipOffset,self.ActiveTooltips local o,p=i.Overlays,0 self:
StyleContainers()self.TooltipsContainer=self.Elements:Overlay{Parent=o}c.
InputBegan:Connect(function(q)if not self:IsMouseEvent(q,true)then return end
local r=tick()local s=r-p local t=self:IsDoubleClick(s)p=t and 0 or r self:
UpdateWindowFocuses()end)local q=function()local q,r=self.TooltipsContainer,#n>0
q.Visible=r if not r then return end local s,t=aa:GetMouseLocation()local u=o.
AbsolutePosition q.Position=UDim2.fromOffset(s-u.X+j,t-u.Y+j)end d.RenderStepped
:Connect(q)end function aa:CheckImportState()if self.Initialised then return end
local h=self.PrefabsId local i=ad:CheckAssetUrl(h)local j,n=pcall(function()
return e:LoadLocalAsset(i)end)self:Init{Prefabs=j and n or nil}end function aa:
GetVersion()return self.Version end function aa:IsMobileDevice()return c.
TouchEnabled end function aa:IsConsoleDevice()return c.GamepadEnabled end
function aa:GetScreenSize()return workspace.CurrentCamera.ViewportSize end
function aa:LoadPrefabs()local h,i=self.PlayerGui,'ReGui-Prefabs'local j=script:
WaitForChild(i,2)if j then return j end local n=h:WaitForChild(i,2)if n then
return n end return nil end function aa:CheckConfig(h,i,j,n)return ad:
CheckConfig(h,i,j,n)end function aa:CreateInstance(h,i,j)local n=Instance.new(h,
i)if j then local o=j.UsePropertiesList if not o then self:SetProperties(n,j)
else self:ApplyFlags{Object=n,Class=j}end end return n end function aa:
ConnectMouseEvent(h,i)local j,n,o,p,q=i.Callback,i.DoubleClick,i.
OnlyMouseHovering,0 if o then q=self:DetectHover(o)end h.Activated:Connect(
function(...)local r=tick()local s=r-p if q and not q.Hovering then return end
if n then if not aa:IsDoubleClick(s)then p=r return end p=0 end j(...)end)end
function aa:GetAnimation(h)return h and self.Animation or TweenInfo.new(0)end
function aa:DynamicImageTag(h,i,j)local n=self.DynamicImages local o=n[i]if not
o then return end if not j then return end j:TagElements{[h]=o}end function aa:
GetDictSize(h)local i=0 for j,n in h do i+=1 end return i end function aa:
RemoveAnimations(h)local i=self:GetAnimationData(h)local j=i.Connections for n,o
in next,j do o:Disconnect()end end function aa:GetAnimationData(h)local i=self.
AnimationConnections local j=i[h]if j then return j end local n={Connections={}}
i[h]=n return n end function aa:AddAnimationSignal(h,i)local j=self:
GetAnimationData(h)local n=j.Connections table.insert(n,i)end function aa:
SetAnimationsEnabled(h)self.NoAnimations=not h end function aa:SetAnimation(h,i,
j)j=j or h local n,o,p=self.Animations,self.HasTouchScreen,i if typeof(i)~=
'table'then p=n[i]end assert(p,`No animation data for Class {i}!`)self:
RemoveAnimations(j)local q,r,s,t,u=p.Init,p.Connections,p.Tweeninfo,p.
NoAnimation,self:GetAnimationData(h)local v,w,y,z,A,B=u.State,true,{},{}function
z:Reset(C)if not A then return end A(C)end function z:FireSignal(C,D)y[C](D)end
function z:Refresh(C)if not B then return end y[B](C)end function z:SetEnabled(C
)w=C end for C,D in next,r do local E,F=function(E)E=E==true B=C local F=self.
NoAnimations if F then return end if not w then return end u.State=C ae:Tween{
NoAnimation=E or t,Object=h,Tweeninfo=s,EndProperties=D}end,j[C]if not o then
local G=F:Connect(E)self:AddAnimationSignal(j,G)end y[C]=E if C==q then A=E end
end if v then z:FireSignal(v)else z:Reset(true)end return z end function aa:
ConnectDrag(h,i)self:CheckConfig(i,{DragStart=g,DragEnd=g,DragMovement=g,
OnDragStateChange=g})local j,n,o,p,q,r=i.DragStart,i.DragEnd,i.DragMovement,i.
OnDragStateChange,{StartAndEnd={Enum.UserInputType.MouseButton1,Enum.
UserInputType.Touch},Movement={Enum.UserInputType.MouseMovement,Enum.
UserInputType.Touch}},false local s,t,u=function(s,t)local u=s.UserInputType
return table.find(q[t],u)end,function(s)local t=s.Position return Vector2.new(t.
X,t.Y)end,function(s)self._DraggingDisabled=s r=s p(s)end local v=function(v)
local w,y,z=v.IsDragging,v.InputType,v.Callback return function(A)if v.
DraggingRequired~=r then return end if v.CheckDraggingDisabled and self.
_DraggingDisabled then return end if not s(A,y)then return end if v.UpdateState
then u(w)end local B=t(A)z(B)end end h.InputBegan:Connect(v{
CheckDraggingDisabled=true,DraggingRequired=false,UpdateState=true,IsDragging=
true,InputType='StartAndEnd',Callback=j})c.InputEnded:Connect(v{DraggingRequired
=true,UpdateState=true,IsDragging=false,InputType='StartAndEnd',Callback=n})c.
InputChanged:Connect(v{DraggingRequired=true,InputType='Movement',Callback=o})
end function aa:MakeDraggable(h)local i,j,n,o,p,q=h.Move,h.Grab,h.
OnDragStateChange,{}function o:SetEnabled(r)local s=h.StateChanged self.Enabled=
r if s then s(self)end end function o:CanDrag(r)return self.Enabled end local r,
s,t,u,v=function(r)if not o:CanDrag()then return end local s=h.DragBegin q=r s(q
)end,function(r)if not o:CanDrag()then return end local s,t=r-q,h.OnUpdate t(s)
end,function(r)p=i.Position end,function(r)local s=UDim2.new(p.X.Scale,p.X.
Offset+r.X,p.Y.Scale,p.Y.Offset+r.Y)h:SetPosition(s)end,function(r,s)ae:Tween{
Object=i,EndProperties={Position=s}}end self:CheckConfig(h,{Enabled=true,
OnUpdate=u,SetPosition=v,DragBegin=t})self:ConnectDrag(j,{DragStart=r,
DragMovement=s,OnDragStateChange=n})local w=h.Enabled o:SetEnabled(w)return o
end function aa:MakeResizable(h)aa:CheckConfig(h,{MinimumSize=Vector2.new(160,90
),MaximumSize=Vector2.new(math.huge,math.huge)})local i,j,n,o,p=h.MaximumSize,h.
MinimumSize,h.Resize,(h.OnUpdate)local q=aa:InsertPrefab('ResizeGrab',{Parent=n}
)local r,s,t=function(r)q.Visible=r.Enabled end,function(r)local s=p+r local t=
UDim2.fromOffset(math.clamp(s.X,j.X,i.X),math.clamp(s.Y,j.Y,i.Y))if o then o(t)
return end ae:Tween{Object=n,EndProperties={Size=t}}end,function(r)p=n.
AbsoluteSize end local u=self:MakeDraggable{Grab=q,OnUpdate=s,DragBegin=t,
StateChanged=r}u.Grab=q return u end function aa:IsMouseEvent(h,i)local j=h.
UserInputType.Name if i and j:find'Movement'then return end return j:find'Touch'
or j:find'Mouse'end function aa:DetectHover(h,i)local j=i or{}j.Hovering=false
local n,o,p,q,r,s=j.OnInput,j.OnHoverChange,j.Anykey,j.MouseMove,j.MouseEnter,j.
MouseOnly local t=function(t,u,v)if t and s then if not aa:IsMouseEvent(t,true)
then return end end if u~=nil then local w=j.Hovering j.Hovering=u if u~=w and o
then o(u)end end if not r and v then return end if n then local w=j.Hovering n(w
,t)return end end local u={h.MouseEnter:Connect(function()t(nil,true,true)end),h
.MouseLeave:Connect(function()t(nil,false,true)end)}if p or s then table.insert(
u,c.InputBegan:Connect(function(v)t(v)end))end if q then local v=h.MouseMoved:
Connect(function()t()end)table.insert(u,v)end function j:Disconnect()for v,w in
next,u do w:Disconnect()end end return j end function aa:StackWindows()local h,i
=self.Windows,20 for j,n in next,h do local o,p=n.WindowFrame,UDim2.fromOffset(i
*j,i*j)n:Center()o.Position+=p end end function aa:GetElementFlags(h)local i=
self._FlagCache return i[h]end function aa:UpdateColors(h)local i,j,n,o,p,q,r=h.
Object,h.Tag,h.NoAnimation,h.TagsList,h.Theme,h.Tweeninfo,self.ElementColors
local s,t,u=self:GetElementFlags(i),self.Debug,r[j]if typeof(u)=='string'then u=
r[u]end if typeof(j)=='table'then u=j elseif o then o[i]=j end if not u then
return end local v={}for w,y in next,u do local z=self:GetThemeKey(p,y)if s and
s[w]then continue end if not z then if t then self:Warn(`Color: '{y}' does not exist!`
)end continue end v[w]=z end ae:Tween{Tweeninfo=q,Object=i,NoAnimation=n,
EndProperties=v}end function aa:MultiUpdateColors(h)local i=h.Objects for j,n in
next,i do self:UpdateColors{TagsList=h.TagsList,Theme=h.Theme,NoAnimation=not h.
Animate,Tweeninfo=h.Tweeninfo,Object=j,Tag=n}end end function aa:ApplyStyle(h,i)
local j=self.Styles local n=j[i]if not n then return end self:ApplyFlags{Object=
h,Class=n}end function aa:ClassIgnores(h)local i=self.ClassIgnored local j=table
.find(i,h)return j and true or false end function aa:MergeMetatables(h,i)local j
,n=self.Debug,{}n.__index=function(o,p)local q,r=self:ClassIgnores(p),h[p]if r~=
nil and not q then return r end local s,t=pcall(function()local s=i[p]return
self:PatchSelf(i,s)end)return s and t or nil end n.__newindex=function(o,p,q)
local r,s=self:ClassIgnores(p),typeof(q)=='function'local t=h[p]~=nil or s if t
and not r then h[p]=q return end xpcall(function()i[p]=q end,function(u)if j
then self:Warn(`Newindex Error: {i}.{p} = {q}\n{u}`)end h[p]=q end)end return
setmetatable({},n)end function aa:Concat(h,i)local j=''for n,o in next,h do j..=
tostring(o)..(n~=#h and i or'')end return j end function aa:GetValueFromAliases(
h,i)for j,n in h do local o=i[n]if o~=nil then return o end end return nil end
function aa:RecursiveCall(h,i)for j,n in next,h:GetDescendants()do i(n)end end
function aa:ApplyFlags(h)local i,j,n,o=self.ElementFlags,h.Object,h.Class,h.
WindowClass function h:GetThemeKey(p)if o then return o:GetThemeKey(p)else
return aa:GetThemeKey(nil,p)end end self:SetProperties(j,n)for p,q in next,i do
local r,s,t,u=q.Properties,q.Callback,q.Recursive,q.WindowProperties local v=
self:GetValueFromAliases(r,n)if o and u and v==nil then v=self:
GetValueFromAliases(u,o)end if v==nil then continue end s(h,j,v)if t then self:
RecursiveCall(j,function(w)s(h,w,v)end)end end end function aa:SetProperties(h,i
)return ad:SetProperties(h,i)end function aa:InsertPrefab(h,i)local j=self.
Prefabs local n=j.Prefabs local o=n:WaitForChild(h)local p=o:Clone()if i then
local q=i.UsePropertiesList if not q then self:SetProperties(p,i)else self:
ApplyFlags{Object=p,Class=i}end end return p end function aa:GetContentSize(h,i)
local j,n,o,p=h:FindFirstChildOfClass'UIListLayout',h:FindFirstChildOfClass
'UIPadding',(h:FindFirstChildOfClass'UIStroke')if j and not i then p=j.
AbsoluteContentSize else p=h.AbsoluteSize end if n then local q,r,s,t=n.
PaddingTop.Offset,n.PaddingBottom.Offset,n.PaddingLeft.Offset,n.PaddingRight.
Offset p+=Vector2.new(s+t,q+r)end if o then local q=o.Thickness p+=Vector2.new(q
/2,q/2)end return p end function aa:PatchSelf(h,i,...)if typeof(i)~='function'
then return i,...end return function(j,...)return i(h,...)end end function aa:
MakeCanvas(h)local i,j,n,o,p,q,r=self.Elements,self.Debug,h.Element,h.
WindowClass,h.Class,h.OnChildChange,af:NewSignal()if q then r:Connect(q)end if
not o and j then self:Warn(`No WindowClass for {n}`)self:Warn(h)end local s=ad:
NewClass(i,{Class=p,RawObject=n,WindowClass=o or false,OnChildChange=r,Elements=
{}})local t={__index=function(t,u)local v=s[u]if v~=nil then return self:
PatchSelf(s,v)end local w=p[u]if w~=nil then return self:PatchSelf(p,w)end local
y=n[u]return self:PatchSelf(n,y)end,__newindex=function(t,u,v)local w=p[u]~=nil
if w then p[u]=v else n[u]=v end end}return setmetatable({},t)end function aa:
GetIniData(h)local i,j=self.IniToSave,{}for n,o in next,i do j[o]=h[o]end return
j end function aa:DumpIni(h)local i,j=self.IniSettings,{}for n,o in next,i do j[
n]=self:GetIniData(o)end if h then return aj:JSONEncode(j)end return j end
function aa:LoadIniIntoElement(h,i)local j={Value=function(j)h:SetValue(j)end}
for n,o in next,i do local p=j[n]if p then p(o)continue end h[n]=o end end
function aa:LoadIni(h,i)local j=self.IniSettings assert(h,
'No Ini configuration was passed')if i then h=aj:JSONDecode(h)end for n,o in
next,h do local p=j[n]self:LoadIniIntoElement(p,o)end end function aa:AddIniFlag
(h,i)local j=self.IniSettings j[h]=i end function aa:OnElementCreate(h)local i,j
,n,o,p=self._FlagCache,h.Flags,h.Object,h.Canvas,h.Class local q,r,s,t,u,v=o.
WindowClass,j.NoAutoTag,j.NoAutoFlags,j.ColorTag,j.NoStyle,j.IniFlag i[n]=j if v
then self:AddIniFlag(v,p)end if u then return end if not r and q then q:
TagElements{[n]=t}end if q then q:LoadStylesIntoElement(h)end if not s then self
:ApplyFlags{Object=n,Class=j,WindowClass=q}end end function aa:VisualError(h,i,j
)local n=self.Initialised and h.Error if not n then self:Error('Class:',j)return
end h:Error{Parent=i,Text=j}end function aa:WrapGeneration(h,i)local j,n,o=self.
_ErrorCache,i.Base,i.IgnoreDefaults return function(p,q,...)q=q or{}self:
CheckConfig(q,n)local r=q.CloneTable if r then q=table.clone(q)end local s,t,u=p
.RawObject,p.Elements,p.OnChildChange self:CheckConfig(q,{Parent=s,Name=q.
ColorTag},nil,o)if p==self then p=self.Elements end local v,w,y=pcall(h,p,q,...)
if v==false then if s then if j[s]then return end j[s]=w end self:VisualError(p,
s,w)self:Error('Class:',w)self:Error(debug.traceback())end if y==nil then y=w
end if u then u:Fire(w)end if y then if t then table.insert(t,y)end self:
OnElementCreate{Object=y,Flags=q,Class=w,Canvas=p}end return w,y end end
function aa:DefineElement(h,i)local j,n,o=self.Elements,self.ThemeConfigs,self.
ElementColors local p,q,r,s,t,u=n.DarkTheme,i.Base,i.Create,i.Export,i.ThemeTags
,i.ColorData self:CheckConfig(q,{ColorTag=h,ElementStyle=h})if t then Merge(p,t)
end if u then Merge(o,u)end local v=self:WrapGeneration(r,i)if s then self[h]=v
end j[h]=v return v end function aa:DefineGlobalFlag(h)local i=self.ElementFlags
table.insert(i,h)end function aa:DefineTheme(h,i)local j=self.ThemeConfigs self:
CheckConfig(i,{BaseTheme=j.DarkTheme})local n=GetAndRemove('BaseTheme',i)local o
={BaseTheme=n,Values=i}j[h]=o return o end function aa:GetMouseLocation()local h
=self.Mouse return h.X,h.Y end function aa:SetWindowFocusesEnabled(h)self.
WindowFocusesEnabled=h end function aa:UpdateWindowFocuses()local h,i=self.
Windows,self.WindowFocusesEnabled if not i then return end for j,n in h do local
o=n.HoverConnection if not o then continue end local p=o.Hovering if p then self
:SetFocusedWindow(n)return end end self:SetFocusedWindow(nil)end function aa:
WindowCanFocus(h)if h.NoSelect then return false end if h.Collapsed then return
false end if h._SelectDisabled then return false end return true end function aa
:GetFocusedWindow()return self.FocusedWindow end function aa:BringWindowToFront(
h)local i,j=self.Windows,h.NoBringToFrontOnFocus if j then return end
MoveTableItem(i,h,1)end function aa:SetFocusedWindow(h)local i,j=self:
GetFocusedWindow(),self.Windows if i==h then return end self.FocusedWindow=h if
h then local n=self:WindowCanFocus(h)if not n then return end self:
BringWindowToFront(h)end local n=#j for o,p in j do local q,r=self:
WindowCanFocus(p),p.WindowFrame if not q then continue end n-=1 if n then r.
ZIndex=n end local s=p==h p:SetFocused(s,n)end end function aa:SetItemTooltip(h,
i)local j,n,o=self.Elements,self.TooltipsContainer,self.ActiveTooltips local p,q
=n:Canvas{Visible=false,UiPadding=UDim.new()}task.spawn(i,p)aa:DetectHover(h,{
MouseMove=true,MouseEnter=true,OnHoverChange=function(r)if r then table.insert(o
,p)return end local s=table.find(o,p)table.remove(o,s)end,OnInput=function(r,s)q
.Visible=r end})end function aa:CheckFlags(h,i)for j,n in next,h do local o=i[j]
if not o then continue end n(o)end end function aa:GetThemeKey(h,i)local j=self.
ThemeConfigs if typeof(h)=='string'then h=j[h]end local n=j.DarkTheme h=h or n
local o,p=h.BaseTheme,h.Values local q=p[i]if q then return q end if o then
return self:GetThemeKey(o,i)end return end function aa:SelectionGroup(h)local i,
j,n=false,function(i,j)for n,o in next,h do if typeof(o)=='Instance'then
continue end if o==j then continue end i(o)end end local o=function(o)if i then
return end i=true local p=n n=o:GetValue()if not p then p=n end j(function(q)q:
SetValue(p)end,o)i=false end j(function(p)p.Callback=o end)end local h=aa.
Elements h.__index=h function h:GetObject()return self.RawObject end function h:
ApplyFlags(i,j)local n=self.WindowClass aa:ApplyFlags{WindowClass=n,Object=i,
Class=j}end function h:Remove()local i,j,n=self.OnChildChange,self:GetObject(),
self.Class local o=n.Remove if o then return o(n)end if i then i:Fire(n or self)
end if n then table.clear(n)end j:Destroy()table.clear(self)end function h:
GetChildElements()local i=self.Elements return i end function h:
ClearChildElements()local i=self:GetChildElements()for j,n in next,i do n:
Destroy()end end function h:TagElements(i)local j,n=self.WindowClass,aa.Debug if
not j then if n then aa:Warn('No WindowClass for TagElements:',i)end return end
j:TagElements(i)end function h:GetThemeKey(i)local j=self.WindowClass if j then
return j:GetThemeKey(i)end return aa:GetThemeKey(nil,i)end function h:
SetColorTags(i,j)local n=self.WindowClass if not n then return end local o,p=n.
TagsList,n.Theme aa:MultiUpdateColors{Animate=j,Theme=p,TagsList=o,Objects=i}end
function h:SetElementFocused(i,j)local n,o,p,q=self.WindowClass,aa.
HasTouchScreen,j.Focused,j.Animation aa:SetAnimationsEnabled(not p)if not p and
q then q:Refresh()end if not n then return end if not o then return end local r=
n.ContentCanvas r.Interactable=not p end aa:DefineElement('Dropdown',{Base={
ColorTag='PopupCanvas',Disabled=false,AutoClose=true,OnSelected=g},Create=
function(i,j)j.Parent=aa.Container.Overlays local n,o,p,q,r=j.Selected,j.Items,j
.OnSelected,i:PopupCanvas(j)local s,t,u=aa:MergeMetatables(j,q),{},function(s)p(
s)end function j:ClearEntries()for v,w in t do w:Remove()end end function j:
SetItems(v,w)local y=v[1]self:ClearEntries()for z,A in v do local B,C=y and A or
z,z==w or A==w local D=q:Selectable{Text=tostring(B),Selected=C,ZIndex=6,
Callback=function()return u(B)end}table.insert(t,D)end end if o then j:SetItems(
o,n)end return s,r end})aa:DefineElement('OverlayScroll',{Base={ElementClass=
'OverlayScroll',Spacing=UDim.new(0,4)},Create=function(i,j)local n,o,p=i.
WindowClass,j.ElementClass,j.Spacing local q=aa:InsertPrefab(o,j)local r,s=q:
FindFirstChild'ContentFrame'or q,q:FindFirstChild('UIListLayout',true)s.Padding=
p local t=aa:MergeMetatables(i,j)local u=aa:MakeCanvas{Element=r,WindowClass=n,
Class=t}function j:GetCanvasSize()return r.AbsoluteCanvasSize end return u,q end
})aa:DefineElement('Overlay',{Base={ElementClass='Overlay'},Create=h.
OverlayScroll})aa:DefineElement('Image',{Base={Image='',Callback=g},Create=
function(i,j)local n=aa:InsertPrefab('Image',j)n.Activated:Connect(function(...)
local o=j.Callback return o(n,...)end)return n end})aa:DefineElement(
'VideoPlayer',{Base={Video='',Callback=g},Create=function(i,j)local n=j.Video j.
Video=ad:CheckAssetUrl(n)local o=aa:InsertPrefab('VideoPlayer',j)return o end})
aa:DefineElement('Button',{Base={Text='Button',DoubleClick=false,Callback=g},
Create=function(i,j)local n=aa:InsertPrefab('Button',j)local o,p=aa:
MergeMetatables(j,n),j.DoubleClick function j:SetDisabled(q)self.Disabled=q end
aa:ConnectMouseEvent(n,{DoubleClick=p,Callback=function(...)if j.Disabled then
return end local q=j.Callback return q(o,...)end})return o,n end})aa:
DefineElement('Selectable',{Base={Text='Selectable',Callback=g,Selected=false,
Disabled=false,Size=UDim2.fromScale(1,0),AutomaticSize=Enum.AutomaticSize.Y,
TextXAlignment=Enum.TextXAlignment.Left,AnimationTags={Selected='Buttons',
Unselected='TransparentButtons'}},Create=function(i,j)local n,o,p,q=i.Class.
AfterClick,j.Selected,j.Disabled,aa:InsertPrefab('Button',j)local r=aa:
MergeMetatables(j,q)q.Activated:Connect(function(...)local s=j.Callback s(q,...)
if n then n(q,...)end end)function j:SetSelected(s)local t=self.AnimationTags
local u=s and t.Selected or t.Unselected self.Selected=s aa:SetAnimation(q,u)
return self end function j:SetDisabled(s)self.Disabled=s q.Interactable=not s
return self end j:SetSelected(o)j:SetDisabled(p)return r,q end})aa:
DefineElement('ImageButton',{Base={ElementStyle='Button',Callback=g},Create=h.
Image})aa:DefineElement('SmallButton',{Base={Text='Button',PaddingTop=UDim.new()
,PaddingBottom=UDim.new(),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.new(0,2),
ColorTag='Button',ElementStyle='Button',Callback=g},Create=h.Button})aa:
DefineElement('Keybind',{Base={Label='Keybind',ColorTag='Frame',Value=nil,
DeleteKey=Enum.KeyCode.Backspace,IgnoreGameProcessed=true,Enabled=true,Disabled=
false,Callback=g,OnKeybindSet=g,OnBlacklistedKeybindSet=g,KeyBlacklist={},
UiPadding=UDim.new(),AutomaticSize=Enum.AutomaticSize.None,Size=UDim2.new(0.3,0,
0,19)},Create=function(i,j)local n,o,p,q,r=j.Value,j.Label,j.Disabled,j.
KeyBlacklist,aa:InsertPrefab('Button',j)local s,t,u,v=aa:MergeMetatables(j,r),i:
Label{Parent=r,Text=o,Position=UDim2.new(1,4,0.5),AnchorPoint=Vector2.new(0,0.5)
},function(s,...)return s(r,...)end,function(s)return table.find(q,s)end
function j:SetDisabled(w)self.Disabled=w r.Interactable=not w i:SetColorTags({[t
]=w and'LabelDisabled'or'Label'},true)return self end function j:SetValue(w)
local y,z=self.OnKeybindSet,self.DeleteKey if w==z then w=nil end self.Value=w r
.Text=w and w.Name or'Not set'u(y,w)return self end function j:WaitForNewKey()
self._WaitingForNewKey=true r.Text='...'r.Interactable=false end local w=
function(w)local y,z=w.KeyCode,w.UserInputType if z~=Enum.UserInputType.Keyboard
then return z end return y end local y=function(y)local z,A,B=j.
OnBlacklistedKeybindSet,j.Value,w(y)if not c.WindowFocused then return end if v(
B)then u(z,B)return end r.Interactable=true j._WaitingForNewKey=false if B.Name
=='Unknown'then return j:SetValue(A)end j:SetValue(B)return end local z=function
(z,A)local B,C,D,E,F,G=j.IgnoreGameProcessed,j.DeleteKey,j.Enabled,j.Value,j.
Callback,w(z)if j._WaitingForNewKey then y(z)return end if not D and r.
Interactable then return end if not B and A then return end if not E then return
end if G==C then return end if G.Name~=E.Name then return end u(F,G)end j:
SetValue(n)j:SetDisabled(p)j.Connection=c.InputBegan:Connect(z)r.Activated:
Connect(function()j:WaitForNewKey()end)aa:SetAnimation(r,'Inputs')return s,r end
})aa:DefineElement('ArrowButton',{Base={Direction='Left',ColorTag='Button',Icon=
aa.Icons.Arrow,Size=UDim2.fromOffset(21,21),IconSize=UDim2.fromScale(1,1),
IconPadding=UDim.new(0,4),Rotations={Left=180,Right=0}},Create=function(i,j)
local n,o=j.Direction,j.Rotations local p=o[n]j.IconRotation=p local q=aa:
InsertPrefab('ArrowButton',j)q.Activated:Connect(function(...)local r=j.Callback
return r(q,...)end)return q end})aa:DefineElement('Label',{Base={Font=
'Inconsolata'},ColorData={LabelPadding={PaddingTop='LabelPaddingTop',
PaddingBottom='LabelPaddingBottom'}},Create=function(i,j)local n,o,p,q,r,s,t,u=j
.Bold,j.Italic,j.Font,j.FontFace,Enum.FontWeight.Medium,Enum.FontWeight.Bold,
Enum.FontStyle.Normal,Enum.FontStyle.Italic local v,w,y=n and s or r,o and u or
t,n or o if not q and y then j.FontFace=Font.fromName(p,v,w)end local z=aa:
InsertPrefab('Label',j)local A=z:FindFirstChildOfClass'UIPadding'i:TagElements{[
A]='LabelPadding'}return z end})aa:DefineElement('Error',{Base={RichText=true,
TextWrapped=true},ColorData={Error={TextColor3='ErrorText',FontFace='TextFont'}}
,Create=function(i,j)local n=j.Text j.Text=`<b>\u{26d4} Error:</b> {n}`return i:
Label(j)end})aa:DefineElement('CodeEditor',{Base={Editable=true,Fill=true,Text=
''},Create=function(i,j)local n,o=i.WindowClass,ab.CodeFrame.new(j)local p=o.Gui
j.Parent=i:GetObject()aa:ApplyFlags{Object=p,WindowClass=n,Class=j}return o,p
end})local i={Engaged=false}i.__index=i function i:SetEngaged(j)local n=self.
WindowClass self.Engaged=j if n then n:SetCanvasInteractable(not j)end end
function i:IsHovering()local j=false self:Foreach(function(n)j=n.Popup:
IsMouseHovering()return j end)return j end function i:Foreach(j)local n=self.
Menus for o,p in next,n do local q=j(p)if q then break end end end function i:
SetFocusedMenu(j)self:Foreach(function(n)local o=n==j n:SetActiveState(o)end)end
function i:Close()self:SetEngaged(false)self:SetFocusedMenu(nil)end function i:
MenuItem(j)local n,o=self.Canvas,self.Menus local p=n:MenuButton(j)local q=n:
PopupCanvas{RelativeTo=p,MaxSizeX=210,Visible=false,AutoClose=false,AfterClick=
function()self:Close()end}local r={Popup=q,Button=p}aa:DetectHover(p,{MouseEnter
=true,OnInput=function()if not self.Engaged then return end self:SetFocusedMenu(
r)end})function r:SetActiveState(s)q:SetPopupVisible(s)p:SetSelected(s)end p.
Activated:Connect(function()self:SetFocusedMenu(r)self:SetEngaged(true)end)table
.insert(o,r)return q,r end aa:DefineElement('MenuBar',{Base={},Create=function(j
,n)local o,p=j.WindowClass,aa:InsertPrefab('MenuBar',n)local q=aa:MakeCanvas{
Element=p,WindowClass=o,Class=n}local r=ad:NewClass(i,{WindowClass=o,Canvas=q,
Object=p,Menus={}})Merge(r,n)aa:DetectHover(p,{MouseOnly=true,OnInput=function()
if not r.Engaged then return end if r:IsHovering()then return end r:Close()end})
local s=aa:MergeMetatables(r,q)return s,p end})aa:DefineElement('MenuButton',{
Base={Text='MenuButton',PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),
Size=UDim2.fromOffset(0,19),AutomaticSize=Enum.AutomaticSize.XY},Create=h.
Selectable})local j={ColorTags={BGSelected={[true]='SelectedTab',[false]=
'DeselectedTab'},LabelSelected={[true]='SelectedTabLabel',[false]=
'DeselectedTabLabel'}}}function j:SetButtonSelected(n,o)if n.IsSelected==o then
return end n.IsSelected=o local p,q,r=self.NoAnimation,self.WindowClass,self.
ColorTags local s,t,u,v,w=q.Theme,q.TagsList,r.BGSelected,r.LabelSelected,n.
TabButton local y=w.Button local z=y.Label aa:MultiUpdateColors{Animate=not p,
Theme=s,TagsList=t,Objects={[y]=u[o],[z]=v[o]}}end function j:CompareTabs(n,o)if
not n then return false end return n.MatchBy==o or n==o end function j:
ForEachTab(n,o)local p,q=typeof(n)=='string',self.Tabs for r,s in q do local t,u
=s.Name,false if p then u=t==n else u=self:CompareTabs(s,n)end o(s,u,r)end end
function j:RemoveTab(n)local o,p=self.OnTabRemove,self.Tabs self:ForEachTab(n,
function(q,r,s)if not r then return end local t,u=q.TabButton,q.OnClosure table.
remove(p,s)t:Destroy()o(self,q)u(q)end)return self end function j:CreateTab(n)n=
n or{}aa:CheckConfig(n,{Name='Tab',AutoSize='Y',Focused=false,OnClosure=g})local
o,p,q,r,s,t,u,v,w=self.AutoSelectNewTabs,self.WindowClass,self.ParentCanvas,self
.Tabs,self.TabsFrame,self.OnTabCreate,n.Focused,n.Name,n.Icon local y,z=u or#r<=
0 and o,aa:InsertPrefab('TabButton',n)z.Parent=s local A=z.Button local B,C=A:
FindFirstChildOfClass'UIPadding',A.Label C.Text=tostring(v)Merge(n,{TabButton=z}
)local D,E=function()self:SetActiveTab(n)end,{Closeable=function()local D=q:
RadioButton{Parent=A,Visible=not self.NoClose,Icon=aa.Icons.Close,IconSize=UDim2
.fromOffset(11,11),LayoutOrder=3,ZIndex=2,UsePropertiesList=true,Callback=
function()self:RemoveTab(n)end}local E=D.Icon aa:SetAnimation(E,{Connections={
MouseEnter={ImageTransparency=0},MouseLeave={ImageTransparency=1}},Init=
'MouseLeave'},z)end}A.Activated:Connect(D)aa:CheckFlags(E,n)table.insert(r,n)if
p then p:TagElements{[B]='TabPadding'}end aa:SetAnimation(A,'Buttons')self:
SetButtonSelected(n,y)q:ApplyFlags(z,n)local F=t(self,n)if y then self:
SetActiveTab(n)end return F or n end function j:SetActiveTab(n)local o,p,q,r,s=
self.Tabs,self.NoAnimation,self.ActiveTab,self.OnActiveTabChange,typeof(n)==
'string'self:ForEachTab(n,function(t,u,v)if u then MatchedTab=t end self:
SetButtonSelected(t,u)end)if not MatchedTab then return self end if self:
CompareTabs(MatchedTab,q)then return self end self.ActiveTab=MatchedTab r(self,
MatchedTab,q)return self end aa:DefineElement('TabBar',{Base={AutoSelectNewTabs=
true,OnActiveTabChange=g,OnTabCreate=g,OnTabRemove=g},ColorData={DeselectedTab={
BackgroundColor3='TabBg'},SelectedTab={BackgroundColor3='TabBgActive'},
DeselectedTabLabel={FontFace='TextFont',TextColor3='TabText'},SelectedTabLabel={
FontFace='TextFont',TextColor3='TabTextActive'},TabsBarSeparator={
BackgroundColor3='TabBgActive'},TabPadding={PaddingTop='TabTextPaddingTop',
PaddingBottom='TabTextPaddingBottom'},TabPagePadding={PaddingBottom=
'TabPagePadding',PaddingLeft='TabPagePadding',PaddingRight='TabPagePadding',
PaddingTop='TabPagePadding'}},Create=function(n,o)local p,q,r=n.WindowClass,aa:
InsertPrefab('TabsBar',o),ad:NewClass(j)local s,t=q.Separator,q.TabsFrame local
u=aa:MakeCanvas{Element=t,WindowClass=p,Class=r}Merge(r,o)Merge(r,{ParentCanvas=
n,Object=q,TabsFrame=t,WindowClass=p,Tabs={}})n:TagElements{[q]='TabsBar',[s]=
'TabsBarSeparator'}local v=aa:MergeMetatables(u,q)return v,q end})aa:
DefineElement('TabSelector',{Base={NoTabsBar=false,OnActiveTabChange=g,
OnTabCreate=g,OnTabRemove=g},Create=function(n,o)local p,q,r,s=n.WindowClass,o.
NoTabsBar,o.NoAnimation,aa:InsertPrefab('TabSelector',o)local t=s.Body local u=t
.PageTemplate u.Visible=false local v,w=function(v,w,...)local y,z,A=w.AutoSize,
w.Name,u:Clone()local B=ad:GetChildOfClass(A,'UIPadding')aa:SetProperties(A,{
Parent=t,Name=z,AutomaticSize=Enum.AutomaticSize[y],Size=UDim2.fromScale(y=='Y'
and 1 or 0,y=='X'and 1 or 0)})n:TagElements{[B]='TabPagePadding'}local C=aa:
MakeCanvas{Element=A,WindowClass=p,Class=w}o.OnTabCreate(v,w,...)Merge(w,{Page=A
,MatchBy=C})return C end,function(v,w,...)v:ForEachTab(w,function(y,z,A)local B=
y.Page B.Visible=z if not z then return end local C=n:GetThemeKey
'AnimationTweenInfo'ae:Tween{Object=B,Tweeninfo=C,NoAnimation=r,StartProperties=
{Position=UDim2.fromOffset(0,4)},EndProperties={Position=UDim2.fromOffset(0,0)}}
end)o.OnActiveTabChange(v,w,...)end local y=n:TabBar{Parent=s,Visible=not q,
OnTabCreate=v,OnActiveTabChange=w,OnTabRemove=function(y,z,...)z.Page:Remove()o.
OnTabRemove(...)end}local z=aa:MergeMetatables(y,s)return z,s end})aa:
DefineElement('RadioButton',{Base={Callback=g},Create=function(n,o)local p=aa:
InsertPrefab('RadioButton',o)p.Activated:Connect(function(...)local q=o.Callback
return q(p,...)end)return p end})aa:DefineElement('Checkbox',{Base={Label=
'Checkbox',IsRadio=false,Value=false,NoAutoTag=true,TickedImageSize=UDim2.
fromScale(1,1),UntickedImageSize=UDim2.fromScale(0,0),Callback=g,Disabled=false}
,Create=function(n,o)local p,q,r,s,t,u,v=o.IsRadio,o.Value,o.Label,o.
TickedImageSize,o.UntickedImageSize,o.Disabled,aa:InsertPrefab('CheckBox',o)
local w,y=aa:MergeMetatables(o,v),v.Tickbox local z=y.Tick z.Image=aa.Icons.
Checkmark local A,B,C,D=y:FindFirstChildOfClass'UIPadding',ad:GetChildOfClass(y,
'UICorner'),n:Label{Text=r,Parent=v,LayoutOrder=2},UDim.new(0,3)if p then z.
ImageTransparency=1 z.BackgroundTransparency=0 B.CornerRadius=UDim.new(1,0)else
D=UDim.new(0,2)end aa:SetProperties(A,{PaddingBottom=D,PaddingLeft=D,
PaddingRight=D,PaddingTop=D})local E,F=function(...)local E=o.Callback return E(
w,...)end,function(E,F)local G,H=n:GetThemeKey'AnimationTweenInfo',E and s or t
ae:Tween{Object=z,Tweeninfo=G,NoAnimation=F,EndProperties={Size=H}}end function
o:SetDisabled(G)self.Disabled=G v.Interactable=not G n:SetColorTags({[C]=G and
'LabelDisabled'or'Label'},true)return self end function o:SetValue(G,H)self.
Value=G F(G,H)E(G)return self end function o:SetTicked(...)aa:Warn
'Checkbox:SetTicked is deprecated, please use :SetValue'return self:SetValue(...
)end function o:Toggle()local G=not self.Value self.Value=G self:SetValue(G)
return self end local G=function()o:Toggle()end v.Activated:Connect(G)y.
Activated:Connect(G)o:SetValue(q,true)o:SetDisabled(u)aa:SetAnimation(y,
'Buttons',v)n:TagElements{[z]='CheckMark',[y]='Checkbox'}return w,v end})aa:
DefineElement('Radiobox',{Base={IsRadio=true,CornerRadius=UDim.new(1,0)},Create=
h.Checkbox})aa:DefineElement('PlotHistogram',{Base={ColorTag='Frame',Label=
'Histogram'},Create=function(n,o)local p,q,r=o.Label,o.Points,aa:InsertPrefab(
'Histogram',o)local s,t=aa:MergeMetatables(o,r),r.Canvas local u=t.PointTemplate
u.Visible=false n:Label{Text=p,Parent=r,Position=UDim2.new(1,4)}local v aa:
SetItemTooltip(r,function(w)v=w:Label()end)Merge(o,{_Plots={},_Cache={}})
function o:GetBaseValues()local w,y=self.Minimum,self.Maximum if w and y then
return w,y end local z=self._Plots for A,B in z do local C=B.Value if not w or C
<w then w=C end if not y or C>y then y=C end end return w,y end function o:
UpdateGraph()local w,y,z=self._Plots,self:GetBaseValues()if not y or not z then
return end local A=z-y for B,C in w do local D,E=C.Point,C.Value local F=(E-y)/A
F=math.clamp(F,0.05,1)D.Size=UDim2.fromScale(1,F)end return self end function o:
Plot(w)local y,z,A=self._Plots,{},u:Clone()local B=A.Bar aa:SetProperties(A,{
Parent=t,Visible=true})local C,D=aa:DetectHover(A,{MouseEnter=true,OnInput=
function()z:UpdateTooltip()end}),{Object=A,Point=B,Value=w}function z:
UpdateTooltip()local E=z:GetPointIndex()v.Text=`{E}:\t{D.Value}`end function z:
SetValue(E)D.Value=E o:UpdateGraph()if C.Hovering then self:UpdateTooltip()end
end function z:GetPointIndex()return table.find(y,D)end function z:Remove(E)
table.remove(y,self:GetPointIndex())A:Remove()o:UpdateGraph()end table.insert(y,
D)self:UpdateGraph()aa:SetAnimation(B,'Plots',A)n:TagElements{[B]='Plot'}return
z end function o:PlotGraph(w)local y=self._Cache local z=#y-#w if z>=1 then for
A=1,z do local B=table.remove(y,A)if B then B:Remove()end end end for A,B in w
do local C=y[A]if C then C:SetValue(B)continue end y[A]=self:Plot(B)end return
self end if q then o:PlotGraph(q)end return s,r end})aa:DefineElement('Viewport'
,{Base={IsRadio=true},Create=function(n,o)local p,q,r=o.Model,o.Camera,aa:
InsertPrefab('Viewport',o)local s,t=aa:MergeMetatables(o,r),r.Viewport local u=t
.WorldModel if not q then q=aa:CreateInstance('Camera',t)q.CFrame=CFrame.new(0,0
,0)end Merge(o,{Camera=q,WorldModel=u,Viewport=t})function o:SetCamera(v)self.
Camera=v t.CurrentCamera=v return self end function o:SetModel(v,w)local y=self.
Clone u:ClearAllChildren()if y then v=v:Clone()end if w then v:PivotTo(w)end v.
Parent=u self.Model=v return v end if p then o:SetModel(p)end o:SetCamera(q)
return s,r end})aa:DefineElement('InputText',{Base={Value='',Placeholder='',
Label='Input text',Callback=g,MultiLine=false,NoAutoTag=true,Disabled=false},
Create=function(n,o)local p,q,r,s,t,u=o.MultiLine,o.Placeholder,o.Label,o.
Disabled,o.Value,aa:InsertPrefab('InputBox',o)local v=u.Frame local w,y=v.Input,
aa:MergeMetatables(o,u)n:Label{Parent=u,Text=r,AutomaticSize=Enum.AutomaticSize.
X,Size=UDim2.fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=2}aa:
SetProperties(w,{PlaceholderText=q,MultiLine=p})local z=function(...)local z=o.
Callback z(y,...)end function o:SetValue(A)w.Text=tostring(A)self.Value=A return
self end function o:SetDisabled(A)self.Disabled=A u.Interactable=not A n:
SetColorTags({[r]=A and'LabelDisabled'or'Label'},true)return self end function o
:Clear()w.Text=''return self end local A=function()local A=w.Text o.Value=A z(A)
end w:GetPropertyChangedSignal'Text':Connect(A)o:SetDisabled(s)o:SetValue(t)n:
TagElements{[w]='Frame'}return y,u end})aa:DefineElement('InputInt',{Base={Value
=0,Increment=1,Placeholder='',Label='Input Int',Callback=g},Create=function(n,o)
local p,q,r,s,t,u=o.Value,o.Placeholder,o.Label,o.Disabled,o.NoButtons,aa:
InsertPrefab('InputBox',o)local v,w=aa:MergeMetatables(o,u),u.Frame local y=w.
Input y.PlaceholderText=q local z,A,B,C=n:Button{Text='-',Parent=w,LayoutOrder=2
,Ratio=1,AutomaticSize=Enum.AutomaticSize.None,FlexMode=Enum.UIFlexMode.None,
Size=UDim2.fromScale(1,1),Visible=not t,Callback=function()o:Decrease()end},n:
Button{Text='+',Parent=w,LayoutOrder=3,Ratio=1,AutomaticSize=Enum.AutomaticSize.
None,FlexMode=Enum.UIFlexMode.None,Size=UDim2.fromScale(1,1),Visible=not t,
Callback=function()o:Increase()end},n:Label{Parent=u,Text=r,AutomaticSize=Enum.
AutomaticSize.X,Size=UDim2.fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=
4},function(...)local z=o.Callback z(v,...)end function o:Increase()local D,E=
self.Value,self.Increment o:SetValue(D+E)end function o:Decrease()local D,E=self
.Value,self.Increment o:SetValue(D-E)end function o:SetDisabled(D)self.Disabled=
D u.Interactable=not D n:SetColorTags({[B]=D and'LabelDisabled'or'Label'},true)
return self end function o:SetValue(D)local E,F,G=self.Value,self.Minimum,self.
Maximum D=tonumber(D)if not D then D=E end if F and G then D=math.clamp(D,F,G)
end y.Text=D o.Value=D C(D)return self end local D=function()local D=y.Text o:
SetValue(D)end o:SetValue(p)o:SetDisabled(s)y.FocusLost:Connect(D)n:TagElements{
[A]='Button',[z]='Button',[y]='Frame'}return v,u end})aa:DefineElement(
'InputTextMultiline',{Base={Label='',Size=UDim2.new(1,0,0,39),Border=false,
ColorTag='Frame'},Create=function(n,o)return n:Console(o)end})aa:DefineElement(
'Console',{Base={Enabled=true,Value='',TextWrapped=false,Border=true,MaxLines=
300,LinesFormat='%s',Callback=g},Create=function(n,o)local p,q,r,s,t=o.ReadOnly,
o.LineNumbers,o.Value,o.Placeholder,aa:InsertPrefab('Console',o)local u,v,w=aa:
MergeMetatables(o,t),t.Source,t.Lines w.Visible=q function o:CountLines(y)local
z=v.Text:split'\n'local A=#z if A==1 and z[1]==''then return 0 end return A end
function o:UpdateLineNumbers()local y,z=self.LineNumbers,self.LinesFormat if not
y then return end local A=self:CountLines()w.Text=''for B=1,A do local C,D=z:
format(B),B~=A and'\n'or''w.Text..=`{C}{D}`end local B=w.AbsoluteSize.X v.Size=
UDim2.new(1,-B,0,0)return self end function o:CheckLineCount()local y=o.MaxLines
if not y then return end local z=v.Text local A=z:split'\n'if#A>y then local B=`{
A[1]}\\n`local C=z:sub(#B)self:SetValue(C)end return self end function o:
UpdateScroll()local y=t.AbsoluteCanvasSize t.CanvasPosition=Vector2.new(0,y.Y)
return self end function o:SetValue(y)if not self.Enabled then return end v.Text
=tostring(y)self:Update()return self end function o:GetValue()return v.Text end
function o:Clear()v.Text=''self:Update()return self end function o:AppendText(
...)local y,z=self:CountLines(true),aa:Concat({...},' ')if y==0 then return self
:SetValue(z)end local A=self:GetValue()local B=`{A}\n{z}`self:SetValue(B)return
self end function o:Update()local y=self.AutoScroll self:CheckLineCount()self:
UpdateLineNumbers()if y then self:UpdateScroll()end end local y=function()local
y=o:GetValue()o:Update()o:Callback(y)end o:SetValue(r)aa:SetProperties(v,o)aa:
SetProperties(v,{TextEditable=not p,Parent=t,PlaceholderText=s})n:TagElements{[v
]='ConsoleText',[w]='ConsoleLineNumbers'}v:GetPropertyChangedSignal'Text':
Connect(y)return u,t end})aa:DefineElement('Table',{Base={VerticalAlignment=Enum
.VerticalAlignment.Top,RowBackground=false,RowBgTransparency=0.87,Border=false,
Spacing=UDim.new(0,4)},Create=function(n,o)local p,q,r,s,t,u,v,w=n.WindowClass,o
.RowBgTransparency,o.RowBackground,o.Border,o.VerticalAlignment,o.MaxColumns,o.
Spacing,aa:InsertPrefab('Table',o)local y,z,A,B,C=aa:MergeMetatables(o,w),w.
RowTemp,0,{},s and r function o:Row(D)D=D or{}local E,F,G,H=D.IsHeader,0,{},z:
Clone()aa:SetProperties(H,{Name='Row',Visible=true,Parent=w})local I=H:
FindFirstChildOfClass'UIListLayout'aa:SetProperties(I,{VerticalAlignment=t,
Padding=not C and v or UDim.new(0,1)})if E then n:TagElements{[H]='Header'}else
A+=1 end if r and not E then local J=A%2~=1 and q or 1 H.BackgroundTransparency=
J end local J={}local K=aa:MergeMetatables(J,H)function J:Column(L)L=L or{}aa:
CheckConfig(L,{HorizontalAlign=Enum.HorizontalAlignment.Left,VerticalAlignment=
Enum.VerticalAlignment.Top})local M=H.ColumnTemp:Clone()local N=M:
FindFirstChildOfClass'UIListLayout'aa:SetProperties(N,L)local O=M:
FindFirstChildOfClass'UIStroke'O.Enabled=s local P=M:FindFirstChildOfClass
'UIPadding'if not C then P:Destroy()end aa:SetProperties(M,{Parent=H,Visible=
true,Name='Column'})return aa:MakeCanvas{Element=M,WindowClass=p,Class=K}end
function J:NextColumn()F+=1 local L=F%u+1 local M=G[L]if not M then M=self:
Column()G[L]=M end return M end table.insert(B,J)return K end function o:NextRow
()return self:Row()end function o:HeaderRow()return self:Row{IsHeader=true}end
function o:ClearRows()A=0 for D,E in next,w:GetChildren()do if not E:IsA'Frame'
then continue end if E==z then continue end E:Destroy()end return o end return y
,w end})aa:DefineElement('List',{Base={Spacing=4,HorizontalFlex=Enum.
UIFlexAlignment.None,VerticalFlex=Enum.UIFlexAlignment.None,HorizontalAlignment=
Enum.HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,
FillDirection=Enum.FillDirection.Horizontal},Create=function(n,o)local p,q,r,s,t
,u,v,w=n.WindowClass,o.Spacing,o.HorizontalFlex,o.VerticalFlex,o.
HorizontalAlignment,o.VerticalAlignment,o.FillDirection,aa:InsertPrefab('List',o
)local y,z=aa:MergeMetatables(o,w),w.UIListLayout aa:SetProperties(z,{Padding=
UDim.new(0,q),HorizontalFlex=r,VerticalFlex=s,HorizontalAlignment=t,
VerticalAlignment=u,FillDirection=v})local A=aa:MakeCanvas{Element=w,WindowClass
=p,Class=y}return A,w end})aa:DefineElement('CollapsingHeader',{Base={Title=
'Collapsing Header',CollapseIcon=aa.Icons.Arrow,Collapsed=true,Offset=0,
NoAutoTag=true,NoAutoFlags=true,IconPadding=UDim.new(0,4),Activated=g},Create=
function(n,o)local p,q,r,s,t,u,v,w,y,z,A,B=o.Title,o.Collapsed,o.ElementStyle,o.
Offset,o.TitleBarProperties,o.OpenOnDoubleClick,o.OpenOnArrow,o.CollapseIcon,o.
IconPadding,o.Icon,o.NoArrow,aa:InsertPrefab('CollapsingHeader',o)local C=B.
TitleBar local D,E=C.Collapse,C.Icon n:ApplyFlags(E,{Image=z})local F,G=D.
CollapseIcon,D.UIPadding ad:SetPadding(G,y)n:ApplyFlags(F,{Image=w})local H,I,J=
n:Label{ColorTag='CollapsingHeader',Parent=C,LayoutOrder=2},n:Indent{Class=o,
Parent=B,Offset=s,LayoutOrder=2,Size=UDim2.fromScale(1,0),AutomaticSize=Enum.
AutomaticSize.None,PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0,1)}local K=
function()local K=o.Activated K(I)end function o:Remove()B:Destroy()table.clear(
self)end function o:SetArrowVisible(L)F.Visible=L end function o:SetTitle(L)H.
Text=L end function o:SetVisible(L)B.Visible=L end function o:SetIcon(L)local M=
L and L~=''E.Visible=M if M then E.Image=ad:CheckAssetUrl(L)end end function o:
SetCollapsed(L)self.Collapsed=L local M,N,O=aa:GetContentSize(J),I:GetThemeKey
'AnimationTweenInfo',UDim2.fromScale(1,0)local P=O+UDim2.fromOffset(0,M.Y)ae:
HeaderCollapse{Tweeninfo=N,Collapsed=L,Toggle=F,Resize=J,Hide=J,ClosedSize=O,
OpenSize=P}return self end local L=function()o:SetCollapsed(not o.Collapsed)end
if t then I:ApplyFlags(C,t)end if not v then aa:ConnectMouseEvent(C,{DoubleClick
=u,Callback=L})end F.Activated:Connect(L)C.Activated:Connect(K)o:SetCollapsed(q)
o:SetTitle(p)o:SetArrowVisible(not A)aa:ApplyStyle(C,r)I:TagElements{[C]=
'CollapsingHeader'}return I,B end})aa:DefineElement('TreeNode',{Base={Offset=21,
IconPadding=UDim.new(0,2),TitleBarProperties={Size=UDim2.new(1,0,0,13)}},Create=
h.CollapsingHeader})aa:DefineElement('Separator',{Base={NoAutoTag=true,
NoAutoTheme=true},Create=function(n,o)local p,q=o.Text,aa:InsertPrefab(
'SeparatorText',o)n:Label{Text=tostring(p),Visible=p~=nil,Parent=q,LayoutOrder=2
,Size=UDim2.new(),PaddingLeft=UDim.new(0,4),PaddingRight=UDim.new(0,4)}n:
TagElements{[q.Left]='Separator',[q.Right]='Separator'}return q end})aa:
DefineElement('Canvas',{Base={},Create=function(n,o)local p,q,r=n.WindowClass,o.
Scroll,o.Class or o local s=q and'ScrollingCanvas'or'Canvas'local t=aa:
InsertPrefab(s,o)local u=aa:MakeCanvas{Element=t,WindowClass=p,Class=r}return u,
t end})aa:DefineElement('ScrollingCanvas',{Base={Scroll=true},Create=h.Canvas})
aa:DefineElement('Region',{Base={Scroll=false,AutomaticSize=Enum.AutomaticSize.Y
},Create=function(n,o)local p,q=n.WindowClass,o.Scroll local r=q and
'ScrollingCanvas'or'Canvas'local s=aa:InsertPrefab(r,o)local t=aa:MakeCanvas{
Element=s,WindowClass=p,Class=o}return t,s end})aa:DefineElement('Group',{Base={
Scroll=false,AutomaticSize=Enum.AutomaticSize.Y},Create=function(n,o)local p,q=n
.WindowClass,aa:InsertPrefab('Group',o)local r=aa:MakeCanvas{Element=q,
WindowClass=p,Class=o}return r,q end})aa:DefineElement('Indent',{Base={Offset=15
,PaddingTop=UDim.new(),PaddingBottom=UDim.new(),PaddingRight=UDim.new()},Create=
function(n,o)local p=o.Offset o.PaddingLeft=UDim.new(0,p)return n:Canvas(o)end})
aa:DefineElement('BulletText',{Base={},Create=function(n,o)local p=o.Rows for q,
r in next,p do local s=n:Bullet(o)s:Label{Text=tostring(r),LayoutOrder=2,Size=
UDim2.fromOffset(0,14)}end end})aa:DefineElement('Bullet',{Base={Padding=3,Icon=
aa.Icons.Dot,IconSize=UDim2.fromOffset(5,5)},Create=function(n,o)local p,q,r=n.
WindowClass,o.Padding,aa:InsertPrefab('Bullet',o)local s,t=aa:MakeCanvas{Element
=r,WindowClass=p,Class=n},r.UIListLayout t.Padding=UDim.new(0,q)return s,r end})
aa:DefineElement('Row',{Base={Spacing=4,Expanded=false,HorizontalFlex=Enum.
UIFlexAlignment.None,VerticalFlex=Enum.UIFlexAlignment.None},Create=function(n,o
)local p,q,r,s,t,u=n.WindowClass,o.Spacing,o.Expanded,o.HorizontalFlex,o.
VerticalFlex,aa:InsertPrefab('Row',o)local v,w=aa:MergeMetatables(o,u),u:
FindFirstChildOfClass'UIListLayout'w.Padding=UDim.new(0,q)w.HorizontalFlex=s w.
VerticalFlex=t local y=aa:MakeCanvas{Element=u,WindowClass=p,Class=v}function o:
Expand()w.HorizontalFlex=Enum.UIFlexAlignment.Fill return self end if r then o:
Expand()end return y,u end})aa:DefineElement('SliderBase',{Base={Format='%.f',
Label='',Type='Slider',Callback=g,NoGrab=false,NoClick=false,Minimum=0,Maximum=
100,ColorTag='Frame',Disabled=false},Create=function(n,o)local p,q,r,s,t,u,v,w,y
=o.Value or o.Minimum,o.Format,o.Label,o.NoAnimation,o.NoGrab,o.NoClick,o.Type,o
.Disabled,aa:InsertPrefab'Slider'local z=y.Track local A,B,C=z.Grab,z.ValueText,
aa:MergeMetatables(o,y)local D,E,F=A.AbsoluteSize,aa:SetAnimation(y,'Inputs'),n:
Label{Parent=y,Text=r,Position=UDim2.new(1,4),Size=UDim2.fromScale(0,1)}Merge(o,
{Grab=A,Name=r})if v=='Slider'then z.Position=UDim2.fromOffset(D.X/2,0)z.Size=
UDim2.new(1,-D.X,1,0)end local G,H={Slider=function(G)return{AnchorPoint=Vector2
.new(0.5,0.5),Position=UDim2.fromScale(G,0.5)}end,Progress=function(G)return{
Size=UDim2.fromScale(G,1)}end,Snap=function(G,H,I,J)local K=(math.round(H)-I)/J
return{Size=UDim2.fromScale(1/J,1),Position=UDim2.fromScale(K,0.5)}end},function
(...)local G=o.Callback return G(C,...)end function o:SetDisabled(I)self.
Disabled=I y.Interactable=not I n:SetColorTags({[F]=I and'LabelDisabled'or
'Label'},true)return self end function o:SetValueText(I)B.Text=tostring(I)end
function o:SetValue(I,J)local K,L,M,N=n:GetThemeKey'AnimationTweenInfo',o.
Minimum,o.Maximum,I local O=M-L if not J then N=(I-L)/O else I=L+(O*N)end N=math
.clamp(N,0,1)local P=G[v](N,I,L,M)ae:Tween{Object=A,Tweeninfo=K,NoAnimation=s,
EndProperties=P}self.Value=I self:SetValueText(q:format(I,M))H(I)return self end
local I,J=function(I)n:SetColorTags({[y]=I and'FrameActive'or'Frame'},true)n:
SetElementFocused(y,{Focused=I,Animation=E})end,function()if o.Disabled then
return end if o.ReadOnly then return end return true end local K=function(K)if
not J()then return end local L,M,N=z.AbsolutePosition.X,z.AbsoluteSize.X,K.X
local O=N-L local P=math.clamp(O/M,0,1)o:SetValue(P,true)end local L,M=function(
...)if not J()then return end I(true)if not u then K(...)end end,function()I(
false)end A.Visible=not t o:SetValue(p)o:SetDisabled(w)n:TagElements{[B]='Label'
,[A]='SliderGrab'}aa:ConnectDrag(z,{DragStart=L,DragMovement=K,DragEnd=M})return
C,y end})aa:DefineElement('SliderEnum',{Base={Items={},Label='Slider Enum',Type=
'Snap',Minimum=1,Maximum=10,Value=1,Callback=g,ColorTag='Frame'},Create=function
(n,o)local p,q=o.Callback,o.Value local r=function(r,s)s=math.round(s)local t=r.
Items r.Maximum=#t return t[s]end o.Callback=function(s,t)local u=r(s,t)s:
SetValueText(u)o.Value=u return p(s,u)end r(o,q)return n:SliderBase(o)end})aa:
DefineElement('SliderInt',{Base={Label='Slider Int',ColorTag='Frame'},Create=h.
SliderBase})aa:DefineElement('SliderFloat',{Base={Label='Slider Float',Format=
'%.3f',ColorTag='Frame'},Create=h.SliderBase})aa:DefineElement('DragInt',{Base={
Format='%.f',Label='Drag Int',Callback=g,Minimum=0,Maximum=100,ColorTag='Frame',
Disabled=false},Create=function(n,o)local p,q,r,s,t=o.Value or o.Minimum,o.
Format,o.Label,o.Disabled,aa:InsertPrefab'Slider'local u,v=aa:MergeMetatables(o,
t),t.Track local w,y=v.ValueText,v.Grab y.Visible=false local z,A,B,C,D,E=n:
Label{Parent=t,Text=r,Position=UDim2.new(1,7),Size=UDim2.fromScale(0,1)},0,0,aa:
SetAnimation(t,'Inputs'),function(...)local z=o.Callback return z(u,...)end
function o:SetValue(F,G)local H,I=self.Minimum,self.Maximum local J=I-H if not G
then A=((F-H)/J)*100 else F=H+(J*(A/100))end F=math.clamp(F,H,I)self.Value=F w.
Text=q:format(F,I)D(F)return self end function o:SetDisabled(F)self.Disabled=F n
:SetColorTags({[z]=F and'LabelDisabled'or'Label'},true)return self end local F,G
=function(F)n:SetColorTags({[t]=F and'FrameActive'or'Frame'},true)n:
SetElementFocused(t,{Focused=F,Animation=C})end,function()if o.Disabled then
return end if o.ReadOnly then return end return true end local H,I,J=function(H)
if not G()then return end F(true)E=H B=A end,function(H)if not G()then return
end local I=H.X-E.X local J=B+(I/2)A=math.clamp(J,0,100)o:SetValue(A,true)end,
function()F(false)end o:SetValue(p)o:SetDisabled(s)aa:ConnectDrag(v,{DragStart=H
,DragEnd=J,DragMovement=I})n:TagElements{[w]='Label'}return u,t end})aa:
DefineElement('DragFloat',{Base={Format='%.3f',Label='Drag Float',ColorTag=
'Frame'},Create=h.DragInt})aa:DefineElement('MultiElement',{Base={Callback=g,
Label='',Disabled=false,BaseInputConfig={},InputConfigs={},Value={},Minimum={},
Maximum={},MultiCallback=g},Create=function(n,o)local p,q,r,s,t,u,v,w=o.Label,o.
BaseInputConfig,o.InputConfigs,o.InputType,o.Disabled,o.Value,o.Minimum,o.
Maximum assert(s,'No input type provided for MultiElement')local y,z=n:Row{
Spacing=4}local A,B,C,D,E=y:Row{Size=UDim2.fromScale(0.65,0),Expanded=true},y:
Label{Size=UDim2.fromScale(0.35,0),LayoutOrder=2,Text=p},aa:MergeMetatables(o,y)
,{},false local F=function()local F={}for G,H in D do F[G]=H:GetValue()end o.
Value=F return F end local function G(...)local H=o.MultiCallback H(C,...)end
local H=function()if#D~=#r then return end if not E then return end local H=F()
G(H)end function o:SetDisabled(I)self.Disabled=I n:SetColorTags({[B]=I and
'LabelDisabled'or'Label'},true)for J,K in D do K:SetDisabled(I)end end function
o:SetValue(I)E=false for J,K in I do local L=D[J]assert(L,`No input object for index: {
J}`)L:SetValue(K)end E=true G(I)end q=Copy(q,{Size=UDim2.new(1,0,0,19),Label='',
Callback=H})for I,J in r do local K=Copy(q,J)aa:CheckConfig(K,{Minimum=v[I],
Maximum=w[I]})local L=A[s](A,K)table.insert(D,L)end Merge(o,{Row=A,Inputs=D})E=
true o:SetDisabled(t)o:SetValue(u)return C,z end})local n=function(n,o,p,q)aa:
DefineElement(n,{Base={Label=n,Callback=g,InputType=o,InputConfigs=table.create(
p,{}),BaseInputConfig={}},Create=function(r,s)local t=(s.BaseInputConfig)if q
then Merge(t,q)end aa:CheckConfig(t,{ReadOnly=s.ReadOnly,Format=s.Format})s.
MultiCallback=function(...)local u=s.Callback u(...)end return r:MultiElement(s)
end})end local o=function(o,p)aa:DefineElement(o,{Base={Label=o,Callback=g,Value
=aa.Accent.Light,Disabled=false,Minimum={0,0,0},Maximum={255,255,255,100},
BaseInputConfig={},InputConfigs={[1]={Format='R: %.f'},[2]={Format='G: %.f'},[3]
={Format='B: %.f'}}},Create=function(q,r)local s,t=r.Value,Copy(r,{Value={1,1,1}
,Callback=function(s,...)if r.ValueChanged then r:ValueChanged(...)end end})
local u,v=q[p](q,t)local w,y=aa:MergeMetatables(r,u),u.Row local z,A=y:Button{
BackgroundTransparency=0,Size=UDim2.fromOffset(19,19),UiPadding=0,Text='',Ratio=
1,ColorTag='',ElementStyle=''},function(...)local z=r.Callback return z(w,...)
end local B=function(B)z.BackgroundColor3=B A(B)end function r:ValueChanged(C)
local D,E,F=C[1],C[2],C[3]local G=Color3.fromRGB(D,E,F)self.Value=G B(G)end
function r:SetValue(C)self.Value=C B(C)u:SetValue{math.round(C.R*255),math.
round(C.G*255),math.round(C.B*255)}end r:SetValue(s)return w,v end})end local p=
function(p,q)aa:DefineElement(p,{Base={Label=p,Callback=g,Disabled=false,Value=
CFrame.new(10,10,10),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(100,100,100),
BaseInputConfig={},InputConfigs={[1]={Format='X: %.f'},[2]={Format='Y: %.f'},[3]
={Format='Z: %.f'}}},Create=function(r,s)local t,u,v=s.Value,s.Maximum,s.Minimum
local w=Copy(s,{Maximum={u.X,u.Y,u.Z},Minimum={v.X,v.Y,v.Z},Value={t.X,t.Y,t.Z},
Callback=function(w,...)if s.ValueChanged then s:ValueChanged(...)end end})local
y,z=r[q](r,w)local A=aa:MergeMetatables(s,y)local B=function(...)local B=s.
Callback return B(A,...)end function s:ValueChanged(C)local D,E,F=C[1],C[2],C[3]
local G=CFrame.new(D,E,F)self.Value=G B(G)end function s:SetValue(C)self.Value=C
y:SetValue{math.round(C.X),math.round(C.Y),math.round(C.Z)}end s:SetValue(t)
return A,z end})end aa:DefineElement('SliderProgress',{Base={Label=
'Slider Progress',Type='Progress',ColorTag='Frame'},Create=h.SliderBase})aa:
DefineElement('ProgressBar',{Base={Label='Progress Bar',Type='Progress',ReadOnly
=true,MinValue=0,MaxValue=100,Format='% i%%',Interactable=false,ColorTag='Frame'
},Create=function(q,r)function r:SetPercentage(s)r:SetValue(s)end local s,t=q:
SliderBase(r)local u=s.Grab q:TagElements{[u]={BackgroundColor3='ProgressBar'}}
return s,t end})aa:DefineElement('Combo',{Base={Value='',Placeholder='',Callback
=g,Items={},Disabled=false,WidthFitPreview=false,Label='Combo'},Create=function(
q,r)local s,t,u,v,w,y,z=r.Placeholder,r.NoAnimation,r.Selected,r.Label,r.
Disabled,r.WidthFitPreview,aa:InsertPrefab('Combo',r)local A,B,C=aa:
MergeMetatables(r,z),(z.Combo)local D,E,F=q:Label{Text=tostring(s),Parent=B,Name
='ValueText'},q:ArrowButton{Parent=B,Interactable=false,Size=UDim2.fromOffset(19
,19),LayoutOrder=2},q:Label{Text=v,Parent=z,LayoutOrder=2}if y then aa:
SetProperties(z,{AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.new(0,0,0,0)})aa
:SetProperties(B,{AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromScale(0,1)}
)end local G,H=function(G,...)r:SetOpen(false)return r.Callback(A,G,...)end,
function(G,H)local I=q:GetThemeKey'AnimationTweenInfo'z.Interactable=not G ae:
HeaderCollapseToggle{Tweeninfo=I,NoAnimation=H,Collapsed=not G,Toggle=E.Icon}end
local function I()local J,K=r.GetItems,r.Items if J then return J()end return K
end function r:SetValueText(J)D.Text=tostring(J)end function r:ClosePopup()if
not C then return end C:ClosePopup(true)end function r:SetDisabled(J)self.
Disabled=J z.Interactable=not J q:SetColorTags({[F]=J and'LabelDisabled'or
'Label'},true)return self end function r:SetValue(J)local K=I()local L=K[J]local
M=L or J self.Selected=J self.Value=M self:ClosePopup()if typeof(J)=='number'
then self:SetValueText(M)else self:SetValueText(J)end G(J,M)return self end
function r:SetOpen(J)local K=self.Selected self.Open=J H(J,t)if not J then self:
ClosePopup()return end C=q:Dropdown{RelativeTo=B,Items=I(),Selected=K,OnSelected
=function(...)r:SetValue(...)end,OnClosed=function()self:SetOpen(false)end}
return self end local J=function()local J=r.Open r:SetOpen(not J)end B.Activated
:Connect(J)H(false,true)r:SetDisabled(w)if u then r:SetValue(u)end aa:
SetAnimation(B,'Inputs')q:TagElements{[B]='Frame'}return A,z end})local q={
TileBarConfig={Close={Image=aa.Icons.Close,IconPadding=UDim.new(0,3)},Collapse={
Image=aa.Icons.Arrow,IconPadding=UDim.new(0,3)}},CloseCallback=g,Collapsible=
true,Open=true,Focused=false}function q:Tween(r)aa:CheckConfig(r,{Tweeninfo=self
:GetThemeKey'AnimationTweenInfo'})return ae:Tween(r)end function q:TagElements(r
)local s,t=self.TagsList,self.Theme aa:MultiUpdateColors{Theme=t,TagsList=s,
Objects=r}end function q:MakeTitleBarCanvas()local r=self.TitleBar local s=aa:
MakeCanvas{WindowClass=self,Element=r}self.TitleBarCanvas=s return s end
function q:AddDefaultTitleButtons()local r=self.TileBarConfig local s,t,u=r.
Collapse,r.Close,self.TitleBarCanvas if not u then u=self:MakeTitleBarCanvas()
end aa:CheckConfig(self,{Toggle=u:RadioButton{Icon=s.Image,IconPadding=s.
IconPadding,LayoutOrder=1,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
ToggleCollapsed()end},CloseButton=u:RadioButton{Icon=t.Image,IconPadding=t.
IconPadding,LayoutOrder=3,Ratio=1,Size=UDim2.new(0,0),Callback=function()self:
SetVisible(false)end},TitleLabel=u:Label{ColorTag='Title',LayoutOrder=2,Size=
UDim2.new(1,0),Active=false,Fill=true,ClipsDescendants=true,AutomaticSize=Enum.
AutomaticSize.XY}})self:TagElements{[self.TitleLabel]='WindowTitle'}end function
q:Close()local r=self.CloseCallback if r then local s=r(self)if s==false then
return end end self:Remove()end function q:SetVisible(r)local s,t=self.
WindowFrame,self.NoFocusOnAppearing self.Visible=r s.Visible=r if r and not t
then aa:SetFocusedWindow(self)end return self end function q:ToggleVisibility(r)
local s=self.Visible self:SetVisible(not s)end function q:GetWindowSize()return
self.WindowFrame.AbsoluteSize end function q:GetTitleBarSizeY()local r=self.
TitleBar return r.Visible and r.AbsoluteSize.Y or 0 end function q:SetTitle(r)
self.TitleLabel.Text=tostring(r)return self end function q:SetPosition(r)self.
WindowFrame.Position=r return self end function q:SetSize(r,s)local t=self.
WindowFrame if typeof(r)=='Vector2'then r=UDim2.fromOffset(r.X,r.Y)end t.Size=r
self.Size=r return self end function q:SetCanvasInteractable(r)local s=self.Body
s.Interactable=r end function q:Center()local r=self:GetWindowSize()/2 local s=
UDim2.new(0.5,-r.X,0.5,-r.Y)self:SetPosition(s)return self end function q:
LoadStylesIntoElement(r)local s,t,u=r.Flags,r.Object,r.Canvas local v={
FrameRounding=function()if s.CornerRadius then return end if not u then return
end local v=t:FindFirstChild('FrameRounding',true)if not v then return end u:
TagElements{[v]='FrameRounding'}end}for w,y in v do local z=self:GetThemeKey(w)
if z==nil then continue end task.spawn(y,z)end end function q:SetTheme(r)local s
,t,u=aa.ThemeConfigs,self.TagsList,self.WindowState r=r or self.Theme assert(s[r
],`{r} is not a valid theme!`)self.Theme=r aa:MultiUpdateColors{Animate=false,
Theme=r,Objects=t}self:SetFocusedColors(u)return self end function q:
SetFocusedColors(r)local s,t,u,v,w=self.WindowFrame,self.TitleBar,self.Theme,
self.TitleLabel,self:GetThemeKey'AnimationTweenInfo'local y=s:
FindFirstChildOfClass'UIStroke'local z={Focused={[y]='BorderActive',[t]=
'TitleBarBgActive',[v]={TextColor3='TitleActive'}},UnFocused={[y]='Border',[t]=
'TitleBarBg',[v]={TextColor3='Title'}},Collapsed={[y]='Border',[t]=
'TitleBarBgCollapsed',[v]={TextColor3='Title'}}}aa:MultiUpdateColors{Tweeninfo=w
,Animate=true,Objects=z[r],Theme=u}end function q:SetFocused(r)r=r==nil and true
or r local s,t=self.Collapsed,self.WindowState if r then aa:SetFocusedWindow(
self)end local u=s and'Collapsed'or r and'Focused'or'UnFocused'if u==t then
return end self.Focused=r self.WindowState=u self:SetFocusedColors(u)end
function q:GetThemeKey(r)return aa:GetThemeKey(self.Theme,r)end function q:
SetCollapsible(r)self.Collapsible=r return self end function q:ToggleCollapsed(r
)local s,t=self.Collapsed,self.Collapsible if not r and not t then return self
end self:SetCollapsed(not s)return self end function q:SetCollapsed(r,s)local t,
u,v,w,y,z,A,B,C=self.WindowFrame,self.Body,self.Toggle,self.ResizeGrab,self.Size
,self.AutoSize,self:GetThemeKey'AnimationTweenInfo',self:GetWindowSize(),self:
GetTitleBarSizeY()local D,E=v.Icon,UDim2.fromOffset(B.X,C)self.Collapsed=r self:
SetCollapsible(false)self:SetFocused(not r)ae:HeaderCollapse{Tweeninfo=A,
NoAnimation=s,Collapsed=r,Toggle=D,Resize=t,NoAutomaticSize=not z,Hide=u,
ClosedSize=E,OpenSize=y,Completed=function()self:SetCollapsible(true)end}self:
Tween{Object=w,NoAnimation=s,EndProperties={TextTransparency=r and 1 or 0.6,
Interactable=not r}}return self end function q:UpdateConfig(r)local s={
NoTitleBar=function(s)local t=self.TitleBar t.Visible=not s end,NoClose=function
(s)local t=self.CloseButton t.Visible=not s end,NoCollapse=function(s)local t=
self.Toggle t.Visible=not s end,NoTabsBar=function(s)local t=self.
WindowTabSelector if not t then return end local u=t.TabsBar u.Visible=not s end
,NoScrollBar=function(s)local t,u,v,w=s and 0 or 9,self.NoScroll,self.
WindowTabSelector,self.ContentCanvas if v then v.Body.ScrollBarThickness=t end
if not u then w.ScrollBarThickness=t end end,NoScrolling=function(s)local t,u,v=
self.NoScroll,self.WindowTabSelector,self.ContentCanvas if u then u.Body.
ScrollingEnabled=not s end if not t then v.ScrollingEnabled=not s end end,NoMove
=function(s)local t=self.DragConnection t:SetEnabled(not s)end,NoResize=function
(s)local t=self.ResizeConnection t:SetEnabled(not s)end,NoBackground=function(s)
local t,u=self:GetThemeKey'WindowBgTransparency',self.CanvasFrame u.
BackgroundTransparency=s and 1 or t end}Merge(self,r)for t,u in r do local v=s[t
]if v then v(u)end end return self end function q:Remove()local r,s,t=self.
WindowFrame,self.WindowClass,aa.Windows local u=table.find(t,s)if u then table.
remove(t,u)end r:Destroy()end function q:MenuBar(r,...)local s,t=self.
ContentCanvas,self.ContentFrame r=r or{}Merge(r,{Parent=t,Layout=-1})return s:
MenuBar(r,...)end aa:DefineElement('Window',{Export=true,Base={Theme='DarkTheme'
,NoSelect=false,NoTabs=true,NoScroll=false,Collapsed=false,Visible=true,AutoSize
=false,MinimumSize=Vector2.new(160,90),OpenOnDoubleClick=true,NoAutoTheme=true,
NoWindowRegistor=false,NoBringToFrontOnFocus=false,IsDragging=false},Create=
function(r,s)aa:CheckImportState()local t,u=aa.Windows,aa.Container.Windows aa:
CheckConfig(s,{Parent=u,Title=aa.DefaultTitle})local v,w,y,z,A,B,C,D,E,F,G=s.
NoDefaultTitleBarButtons,s.Collapsed,s.MinimumSize,s.Title,s.NoTabs,s.NoScroll,s
.Theme,s.AutomaticSize,s.NoWindowRegistor,s.AutoSelectNewTabs,s.Parent~=u local
H={Scroll=not B,Fill=not D and true or nil,UiPadding=UDim.new(0,A and 8 or 0),
AutoSelectNewTabs=F}if D then Merge(H,{AutomaticSize=D,Size=UDim2.new(1,0)})end
local I=aa:InsertPrefab('Window',s)local J=I.Content local K,L=J.TitleBar,ad:
NewClass(q)local M,N,O,P=(aa:MakeCanvas{Element=J,WindowClass=L,Class=L})local Q
,R=M:Canvas(Copy(H,{Parent=J,CornerRadius=UDim.new(0,0)}))local S=aa:
MakeResizable{MinimumSize=y,Resize=I,OnUpdate=function(S)L:SetSize(S,true)end}
Merge(L,s)Merge(L,{WindowFrame=I,ContentFrame=J,CanvasFrame=R,ResizeGrab=S.Grab,
TitleBar=K,Elements=h,TagsList={},_SelectDisabled=G,ResizeConnection=S,
HoverConnection=aa:DetectHover(J),DragConnection=aa:MakeDraggable{Grab=J,Move=I,
SetPosition=function(T,U)local V=N:GetThemeKey'AnimationTweenInfo'ae:Tween{
Tweeninfo=V,Object=T.Move,EndProperties={Position=U}}end,OnDragStateChange=
function(T)L.IsDragging=T R.Interactable=not T if T then aa:SetFocusedWindow(P)
end aa:SetWindowFocusesEnabled(not T)end}})if A then N,O=Q,R else N,O=Q:
TabSelector(H)L.WindowTabSelector=N end P=aa:MergeMetatables(L,N)Merge(L,{
ContentCanvas=N,WindowClass=P,Body=O})aa:ConnectMouseEvent(J,{DoubleClick=true,
OnlyMouseHovering=K,Callback=function(...)if not L.OpenOnDoubleClick then return
end if L.NoCollapse then return end L:ToggleCollapsed()end})if not v then L:
AddDefaultTitleButtons()end L:SetTitle(z)L:SetCollapsed(w,true)L:SetTheme(C)L:
UpdateConfig(s)L:SetFocused()if not E then table.insert(t,P)end local T=S.Grab
aa:SetAnimation(T,'TextButtons')aa:SetFocusedWindow(P)P:TagElements{[T]=
'ResizeGrab',[K]='TitleBar',[R]='Window'}return P,I end})aa:DefineElement(
'TabsWindow',{Export=true,Base={NoTabs=false,AutoSelectNewTabs=true},Create=
function(r,s)return r:Window(s)end})aa:DefineElement('PopupCanvas',{Base={
AutoClose=false,Scroll=false,Visible=true,Spacing=UDim.new(0,1),AutomaticSize=
Enum.AutomaticSize.XY,MaxSizeY=150,MinSizeX=100,MaxSizeX=math.huge,OnClosed=g},
Create=function(r,s)local t,u,v,w,y,z,A=s.RelativeTo,s.MaxSizeY,s.MinSizeX,s.
MaxSizeX,s.Visible,s.AutoClose,s.NoAnimation s.Parent=aa.Container.Overlays
local B,C=r:OverlayScroll(s)local D=C.UIStroke local E,F,G,H,I,J,K=D.Thickness,C
.Parent.AbsolutePosition,(aa:DetectHover(C,{MouseOnly=true,OnInput=function(E,F)
if E then return end if not C.Visible then return end s:OnFocusLost()end}))
function s:FetchScales()local L=B:GetCanvasSize()H=t.AbsolutePosition I=t.
AbsoluteSize J=math.clamp(L.Y,I.Y,u)K=math.clamp(I.X,v,w)end function s:
UpdatePosition()C.Position=UDim2.fromOffset(H.X-F.X+E,H.Y-F.Y+I.Y)end function s
:GetScale(L)local M,N=UDim2.fromOffset(K,J),UDim2.fromOffset(K,0)return L and M
or N end function s:IsMouseHovering()return G.Hovering end function s:
OnFocusLost()local L=self.OnClosed self:SetPopupVisible(false)L(self)if z then
self:ClosePopup()end end function s:ClosePopup(L)self:SetPopupVisible(false,A,L)
G:Disconnect()C:Remove()end function s:SetPopupVisible(L,M)if C.Visible==L then
return end t.Interactable=not L self:UpdateScales(L,A,M)self.Visible=L end
function s:UpdateScales(L,M,N)local O=B:GetThemeKey'AnimationTweenInfo'L=L==nil
and C.Visible or L s:FetchScales()s:UpdatePosition()local P=ae:Tween{Tweeninfo=O
,Object=C,NoAnimation=M,EndProperties={Size=s:GetScale(L),Visible=L}}if P and N
then P.Completed:Wait()end end s:UpdateScales(false,true)s:SetPopupVisible(y)B.
OnChildChange:Connect(s.UpdateScales)return B,C end})aa:DefineElement(
'PopupModal',{Export=true,Base={NoAnimation=false,NoCollapse=true,NoClose=true,
NoResize=true,NoSelect=true,NoAutoFlags=true,NoWindowRegistor=true,NoScroll=true
},Create=function(r,s)local t,u,v=r.WindowClass,(s.NoAnimation)s.Parent=aa.
Container.Overlays if t then v=t:GetThemeKey'ModalWindowDimTweenInfo's.Theme=t.
Theme end local w=aa:InsertPrefab('ModalEffect',s)local y=r:Window(Copy(s,{
NoAutoFlags=false,Parent=w,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.
fromScale(0.5,0.5),Size=UDim2.fromOffset(372,38),AutomaticSize=Enum.
AutomaticSize.Y}))function s:ClosePopup()ae:Tween{Object=w,Tweeninfo=v,
NoAnimation=u,EndProperties={BackgroundTransparency=1},Completed=function()w:
Destroy()end}y:Close()end ae:Tween{Object=w,Tweeninfo=v,NoAnimation=u,
StartProperties={BackgroundTransparency=1},EndProperties={BackgroundTransparency
=0.8}}r:TagElements{[w]='ModalWindowDim'}local z=aa:MergeMetatables(s,y)return z
,w end})n('InputInt2','InputInt',2,{NoButtons=true})n('InputInt3','InputInt',3,{
NoButtons=true})n('InputInt4','InputInt',4,{NoButtons=true})n('SliderInt2',
'SliderInt',2)n('SliderInt3','SliderInt',3)n('SliderInt4','SliderInt',4)n(
'SliderFloat2','SliderFloat',2)n('SliderFloat3','SliderFloat',3)n('SliderFloat4'
,'SliderFloat',4)n('DragInt2','DragInt',2)n('DragInt3','DragInt',3)n('DragInt4',
'DragInt',4)n('DragFloat2','DragFloat',2)n('DragFloat3','DragFloat',3)n(
'DragFloat4','DragFloat',4)o('InputColor3','InputInt3')o('SliderColor3',
'SliderInt3')o('DragColor3','DragInt3')p('InputCFrame','InputInt3')p(
'SliderCFrame','SliderInt3')p('DragCFrame','DragInt3')return aa
