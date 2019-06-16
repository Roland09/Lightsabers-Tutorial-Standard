// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Custom/Blade"
{
	Properties
	{
		_EmissionColor("Emission Color", Color) = (1,0,0,0)
		_OuterGlow("Outer Glow", Range( 0 , 10)) = 0
		_InnerGlow("Inner Glow", Range( 0 , 1)) = 0.5
		_PulseSpeed("Pulse Speed", Range( 0 , 60)) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			half filler;
		};

		uniform float4 _EmissionColor;
		uniform float _OuterGlow;
		uniform float _InnerGlow;
		uniform float _PulseSpeed;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float mulTime7 = _Time.y * _PulseSpeed;
			float4 temp_cast_0 = (( _InnerGlow * (0.0 + (sin( mulTime7 ) - 0.0) * (1.0 - 0.0) / (1.0 - 0.0)) )).xxxx;
			float4 lerpResult4 = lerp( ( _EmissionColor * _OuterGlow ) , temp_cast_0 , _InnerGlow);
			o.Emission = lerpResult4.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16700
7;109;2423;1099;2719.778;448.0359;2.191025;True;True
Node;AmplifyShaderEditor.RangedFloatNode;6;-1167.13,636.2537;Float;False;Property;_PulseSpeed;Pulse Speed;3;0;Create;False;0;0;False;0;0;23.4;0;60;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;7;-827.8293,641.4539;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;8;-621.1296,638.8539;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;9;-469.0296,641.4535;Float;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;5;-1031.503,303.4138;Float;True;Property;_InnerGlow;Inner Glow;2;0;Create;False;0;0;False;0;0.5;0.35;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2;-1035.503,67.41382;Float;True;Property;_OuterGlow;Outer Glow;1;0;Create;False;0;0;False;0;0;2.95;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-972.5029,-154.5862;Float;False;Property;_EmissionColor;Emission Color;0;0;Create;False;0;0;False;0;1,0,0,0;0.9994442,0.02357178,0.02357178,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3;-575.5029,-24.58618;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;-251.9296,579.0536;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;4;-327.5029,48.41382;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;Custom/Blade;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;7;0;6;0
WireConnection;8;0;7;0
WireConnection;9;0;8;0
WireConnection;3;0;1;0
WireConnection;3;1;2;0
WireConnection;10;0;5;0
WireConnection;10;1;9;0
WireConnection;4;0;3;0
WireConnection;4;1;10;0
WireConnection;4;2;5;0
WireConnection;0;2;4;0
ASEEND*/
//CHKSM=E468BB27E7CCEF17D856BA2BB6FE8230D6A2A24F