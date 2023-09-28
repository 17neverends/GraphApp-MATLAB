            app.x11 = eval(app.valuex1);
            app.x22 = eval(app.valuex2); 
            app.nn = app.valuen;
            x = linspace(app.x11, app.x22, app.nn);
            app.y = eval(app.valuey);
            plot(x, app.y)
            xlabel('X');ylabel('Y');title(sprintf('График функции (%s)', app.valuey));xlim([app.valueoxmin, app.valueoxmax]);
            ylim([app.valueoymin,app.valueoymax]);
            [filename, pathname] = uiputfile('*.png', 'Сохранить график');
            frame = getframe(gcf);
            imageData = frame.cdata;
            imwrite(imageData, fullfile(pathname, filename));