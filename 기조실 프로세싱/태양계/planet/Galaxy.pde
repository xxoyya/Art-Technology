class Galaxy 
{  
  int numberOfstars = 1000;   
  Star[] star = new Star[numberOfstars];  
   Galaxy(int n) 
   {  
      numberOfstars = n;  
    }  
      void show() 
      {  
        for (int i=0; i<numberOfstars; i++) 
        {  
          star[i]= new Star(random(-width,2*width),random(-height,2*height));       
        }  
  }  

  void galaxy(int b, float c) 
   {  
      for (int d=0; d<numberOfstars; d++) 
       {  
        star[d].move(b,c);   
       }  
  }  


class Star 

{  
    float x,y,z,p,pt;  
    Star(float xt,float yt ) 
    {  
      p=xt;   
      y=yt;   
    }  

    void move(int j,float k) 
    {  
      float pt = p - x;  
      pushMatrix();
      translate(pt, y, -1000);
      ellipse(0,0,j,j);   
      popMatrix();
      if (pt < -width) 
        { 
          p = p + width;   
        }  
            if (pt > 2*width) 
            {  
              p = p - width;   
            }  
      x  = x + k;  
    }  
  }  
}  
