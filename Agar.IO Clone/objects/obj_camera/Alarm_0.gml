if r >= 255
{
    r = r-3;
}

if r <= 0
{
    r = r+3;
}

{
    var n;
    n = irandom(1);
    
    if n = 0
    {
        r = r-irandom(3);
    }
    
    if n = 1
    {
        r = r+irandom(3);
    }
}


if g >= 255
{
    g = g-3;
}

if g <= 0
{
    g = g+3;
}

{
    var n;
    n = irandom(1);
    
    if n = 0
    {
        g = g-irandom(3);
    }
    
    if n = 1
    {
        g = g+irandom(3);
    }
}


if b >= 255
{
    b = b-3;
}

if b <= 0
{
    b = b+3;
}

{
    var n;
    n = irandom(1);
    
    if n = 0
    {
        b = b-irandom(3);
    }
    
    if n = 1
    {
        b = b+irandom(3);
    }
}
