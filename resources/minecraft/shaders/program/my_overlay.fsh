#version 110

uniform sampler2D DiffuseSampler;
uniform sampler2D MyOverlaySampler;

varying vec2 texCoord;

void main() {
    gl_FragColor = texture2D(DiffuseSampler, texCoord);
	vec4 overlay = texture2D(MyOverlaySampler, vec2(texCoord.x, (1.0-texCoord.y)));
    gl_FragColor.rgb = mix(gl_FragColor.rgb, overlay.rgb, overlay.a).rgb;
}
