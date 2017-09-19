within QSS.Docs;
model StateEvent2 "This model tests state event detection"
  extends Modelica.Icons.Example;
  Real x(start=-0.5, fixed=true);
  discrete Real y(start=1.0, fixed=true);
  Modelica.Blocks.Interfaces.RealInput u
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
equation
  der(x) = y;
  when (u > x) then
    y = -1.0;
  end when;
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
This model has 1 state event 
at t=0.5s when simulated from 0 to 1s.
</p>
</html>"));
end StateEvent2;
