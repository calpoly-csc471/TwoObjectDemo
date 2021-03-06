#version 330 core

layout(location = 0) in vec3 vertPos;

uniform mat4 P;
uniform mat4 MV;
uniform float uTime;

out vec2 fVertPos;


void main()
{
	fVertPos = vertPos.xy;
	vec3 position = vertPos;

	const float radius = 0.8;
	position.xy += vec2(cos(uTime), sin(uTime)) * radius;

	gl_Position = P * MV * vec4(position, 1.0);
}
