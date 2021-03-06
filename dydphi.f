c        ********************** dydphi **************************
c        *                      ------                          *
c        * this function calculates  the  derivative  of  y     *
c        * (being omega_cyclotron_i/omega) with  respect to  phi*
c        * (i - type of particles)                              *
c        ********************************************************
c
c------------------------------------------------------------------
c								   !
c        input parameters					   !
c      								   !
c      z, r phi - coordinates of the point where the derivative is !
c                 calculated.        		         	   !
c      i = 1 - electrons,                                          !
c        > 1 - ions.                                               !
c      rho is from common one.i
c------------------------------------------------------------------
	double precision
     1function dydphi(z,r,phi,i)
      !implicit double precision (a-h,o-z)
      implicit none !YuP[2020-01-14]
      integer i !YuP[2020-01-14]
      real*8 z,r,phi !YuP[2020-01-14]
      include 'param.i'
      include 'one.i'

      dydphi=0.d0
      dydphi=w(i)*dbmdph
      return
      end


