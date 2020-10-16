#ifdef SO_GD_PIPELINE_UNITY_FORWARD
	#ifdef POINT
		#define LIGHT_ATTENUATION_ONLY(a)    (tex2D(_LightTexture0, dot(a._LightCoord,a._LightCoord).rr).UNITY_ATTEN_CHANNEL )
	#endif

	#ifdef SPOT
		#define LIGHT_ATTENUATION_ONLY(a)    ( (a._LightCoord.z > 0) * UnitySpotCookie(a._LightCoord) * UnitySpotAttenuate(a._LightCoord.xyz) )
	#endif

	#ifdef DIRECTIONAL
		#define LIGHT_ATTENUATION_ONLY(a)     1
	#endif

	#ifdef POINT_COOKIE
		#define LIGHT_ATTENUATION_ONLY(a)    ( tex2D(_LightTextureB0, dot(a._LightCoord,a._LightCoord).rr).UNITY_ATTEN_CHANNEL * texCUBE(_LightTexture0, a._LightCoord).w )
	#endif

	#ifdef DIRECTIONAL_COOKIE
		#define LIGHT_ATTENUATION_ONLY(a)    ( tex2D(_LightTexture0, a._LightCoord ).w )
	#endif
#endif

