SOFLOAT4 _Color;
SOFLOAT4 _ColorBack;

inline void ApplyGlobalColor ( inout SOLightingData i_sold )
{
	#ifdef SO_SF_NORMAL_FIX
		i_sold.finalRGBA *= lerp ( _ColorBack, _Color, ( ( i_sold.facing + 1.0 ) * 0.5 ) );
	#else
		i_sold.finalRGBA *= _Color;
	#endif
}
