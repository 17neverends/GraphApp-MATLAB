clear; clc;
a = num2str(1);b = num2str(0);c = strcat(a,b);
%a = points
%b = grid
%[a,b]
switch c
    case '00'
        line(app.UIAxes, x, eval(app.valuey), 'Color', app.selectedColor);grid(app.UIAxes, 'off')
    case '10'
        line(app.UIAxes, x, eval(app.valuey), 'LineStyle', '-', 'Marker', '.', 'Color', app.selectedColor);grid(app.UIAxes, 'off')
    case '01'
        line(app.UIAxes, x, eval(app.valuey), 'Color', app.selectedColor);grid(app.UIAxes, 'on')
    case '11'
       line(app.UIAxes, x, eval(app.valuey), 'LineStyle', '-', 'Marker', '.', 'Color', app.selectedColor);grid(app.UIAxes, 'on')
end
