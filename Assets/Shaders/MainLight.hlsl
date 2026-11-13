#ifndef MAINLIGHT_INCLUDED
#define MAINLIGHT_INCLUDED

void MainLight_float(out float3 Direction, out float3 Color)
{
#ifdef SHADERGRAPH_PREVIEW
    Direction = normalize(float3(0.5, 0.5, 0.25));
    Color = 1;
#else
    Light light = GetMainLight();
    Direction = light.direction;
    Color = light.color;
#endif
}
#endif