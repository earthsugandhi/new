test = [10;15;20;30;40;50];
s = test;
n = size(test);
n = n(1,1);
share_exhaust_status = 0;
cashpool_exhaust_status = 0;
for j=1:1:n
  get_data_2
  ut = 0;
  dt = 0;
  set_parameters
  share_exhaust_status = 0;
end