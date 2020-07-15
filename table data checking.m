Data = ...
  [1850      -0.526          
  1852      -0.388   
  1853      -0.413      
  1854      -0.361      
  1855      -0.336       
  1856      -0.480          
  1857      -0.620            
  1858      -0.468            
  1859      -0.405      
  1860      -0.469         
  1861      -0.573                 
  1862      -0.655        
  1863      -0.421           
  1864      -0.443        
  1865      -0.340       
  1866      -0.283     
  1867      -0.262        
  1868      -0.250    
  1869      -0.270   
  1870      -0.342        
  1871      -0.373          
  1872      -0.346         
  1873      -0.310      
  1874      -0.381     
  1875      -0.425     
  1876      -0.424         
  1877      -0.040       
  1878       0.056        
  1879      -0.284    
  1880      -0.344       
  1881      -0.244      
  1882      -0.300      
  1883      -0.353       
  1884      -0.514           
  1885      -0.490         
  1886      -0.518        
  1887      -0.542      
  1888      -0.346        
  1889      -0.220        
  1890      -0.501     
  1891      -0.400       
  1892      -0.437                 
  1893      -0.424             
  1894      -0.414               
  1895      -0.354                 
  1896      -0.257               
  1897      -0.241                
  1898      -0.439             
  1899      -0.273               
  1900      -0.161                   
  1901      -0.233                 
  1902      -0.372                 
  1903      -0.474                
  1904      -0.518                   
  1905      -0.357               
  1906      -0.283                       
  1907      -0.456                    
  1908      -0.474        
  1909      -0.535              
  1910      -0.507                        
  1911      -0.524                
  1912      -0.455                   
  1913      -0.413             
  1914      -0.241          
  1915      -0.178           
  1916      -0.419              
  1917      -0.532              
  1918      -0.374          
  1919      -0.293                        
  1920      -0.279        
  1921      -0.209            
  1922      -0.303          
  1923      -0.283             
  1924      -0.275          
  1925      -0.232             
  1926      -0.087           
  1927      -0.204            
  1928      -0.183           
  1929      -0.375       
  1930      -0.152        
  1931      -0.092        
  1932      -0.127        
  1933      -0.318        
  1934      -0.178              
  1935      -0.220   
  1936      -0.167        
  1937       0.002          
  1938       0.008       
  1939      -0.023          
  1940       0.074       
  1941       0.053    
  1942       0.010    
  1943       0.052      
  1944       0.144    
  1945       0.007        
  1946      -0.061        
  1947       0.040       
  1948      -0.074      
  1949      -0.103      
  1950      -0.173       
  1951      -0.000      
  1952       0.070         
  1953       0.131        
  1954      -0.062        
  1955      -0.111        
  1956      -0.178        
  1957       0.065   
  1958       0.064           
  1959       0.038        
  1960      -0.009    
  1961       0.074       
  1962       0.025     
  1963       0.064         
  1964      -0.204        
  1965      -0.103      
  1966      -0.035         
  1967       0.006        
  1968      -0.056   
  1969       0.087  
  1970       0.023        
  1971      -0.099      
  1972      -0.009        
  1973       0.108      
  1974      -0.110       
  1975      -0.056   
  1976      -0.164   
  1977       0.133 
  1978       0.005        
  1979       0.093         
  1980       0.212       
  1981       0.259  
  1982       0.042
  1983       0.235     
  1984       0.069  
  1985       0.056       
  1986       0.108 
  1987       0.242        
  1988       0.287         
  1989       0.169         
  1990       0.361         
  1991       0.344            
  1992       0.159                   
  1993       0.191             
  1994       0.246       
  1995       0.390             
  1996       0.293               
  1997       0.437     
  1998       0.589      
  1999       0.355      
  2000       0.367            
  2001       0.509          
  2002       0.588       
  2003       0.572          
  2004       0.474               
  2005       0.654      
  2006       0.607  
  2007       0.615       
  2008       0.483     
  2009       0.616      
  2010       0.685             
  2011       0.569       
  2012       0.582         
  2013       0.610        
  2014       0.671                 
  2015       0.810        
  2016       0.949        
  2017       0.833 
  2018       0.774];
%import data
t = Data(:,1);
temperature = Data(:,2);
%set up exponential fit function with lsqcurvefit
F = @(x,tdata)x(1)+x(2)*exp(tdata*x(3));
x0 = [0 0 0];
[x,resnorm,~,exitflag,output] = lsqcurvefit(F,x0,t,temperature);
%print the figure
hold on
plot(t,F(x,t))
plot(t,temperature,'ro');
title('Data vs temperature');
legend('Data','exponential Fit');
hold off;

