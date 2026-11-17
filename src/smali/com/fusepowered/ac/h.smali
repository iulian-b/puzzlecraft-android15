.class Lcom/fusepowered/ac/h;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static o:D

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:Z

.field static s:Landroid/graphics/Paint;

.field static t:[F


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:Ljava/lang/String;

.field F:Lcom/fusepowered/ac/AdColonyV4VCAd;

.field a:Lcom/fusepowered/ac/ADCImage;

.field b:Lcom/fusepowered/ac/ADCImage;

.field c:Lcom/fusepowered/ac/ADCImage;

.field d:Lcom/fusepowered/ac/ADCImage;

.field e:Lcom/fusepowered/ac/ADCImage;

.field f:Lcom/fusepowered/ac/ADCImage;

.field g:Lcom/fusepowered/ac/ADCImage;

.field h:Lcom/fusepowered/ac/ADCImage;

.field i:D

.field j:D

.field k:D

.field l:D

.field m:D

.field n:Z

.field u:Lcom/fusepowered/ac/AdColonyInterstitialAd;

.field v:J

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/fusepowered/ac/h;->q:Ljava/lang/String;

    .line 46
    sput-boolean v1, Lcom/fusepowered/ac/h;->r:Z

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    .line 50
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/fusepowered/ac/h;->t:[F

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide v0, 0x4006666666666666L    # 2.8

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->i:D

    .line 33
    const-wide v0, 0x4000666666666666L    # 2.05

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->j:D

    .line 34
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->k:D

    .line 36
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->l:D

    .line 37
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->m:D

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->v:J

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/fusepowered/ac/AdColonyInterstitialAd;)V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const-wide v0, 0x4006666666666666L    # 2.8

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->i:D

    .line 33
    const-wide v0, 0x4000666666666666L    # 2.05

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->j:D

    .line 34
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->k:D

    .line 36
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->l:D

    .line 37
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->m:D

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/ac/h;->v:J

    .line 118
    iput-object p1, p0, Lcom/fusepowered/ac/h;->E:Ljava/lang/String;

    .line 119
    iput p2, p0, Lcom/fusepowered/ac/h;->D:I

    .line 120
    iput-object p3, p0, Lcom/fusepowered/ac/h;->u:Lcom/fusepowered/ac/AdColonyInterstitialAd;

    .line 122
    invoke-virtual {p0}, Lcom/fusepowered/ac/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, -0x1

    .line 125
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 131
    sget-object v0, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    sget-object v1, Lcom/fusepowered/ac/h;->t:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 135
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/fusepowered/ac/h;->t:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    float-to-int v0, v1

    return v0
.end method

.method a(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 147
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 149
    sget-object v1, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const v2, -0xf0f10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    add-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    sget-object v3, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    sget-object v1, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    int-to-float v0, v0

    int-to-float v1, p3

    sget-object v2, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 188
    const-string v0, ""

    sput-object v0, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    .line 189
    const-string v0, ""

    sput-object v0, Lcom/fusepowered/ac/h;->q:Ljava/lang/String;

    .line 190
    const-string v0, ""

    .line 193
    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    const-string v4, "WW"

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, p2}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 196
    sput-boolean v1, Lcom/fusepowered/ac/h;->r:Z

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 199
    :goto_0
    iget-object v4, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v4, v4, Lcom/fusepowered/ac/ADCImage;->f:I

    const-string v5, "WW"

    invoke-virtual {p0, v5}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p2}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 199
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v4, v1

    move v5, v1

    .line 206
    :goto_1
    if-ge v4, v2, :cond_3

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    if-lt v4, v7, :cond_1

    .line 211
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    move v0, v4

    .line 206
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_1

    .line 215
    :cond_1
    if-ge v5, v7, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    move v0, v5

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    goto :goto_3

    .line 218
    :cond_3
    if-ge v5, v7, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    sput-object v0, Lcom/fusepowered/ac/h;->q:Ljava/lang/String;

    .line 227
    :goto_5
    return-void

    .line 218
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 222
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/h;->r:Z

    .line 223
    sput-object p1, Lcom/fusepowered/ac/h;->p:Ljava/lang/String;

    .line 224
    const-string v0, ""

    sput-object v0, Lcom/fusepowered/ac/h;->q:Ljava/lang/String;

    goto :goto_5
.end method

.method public a()Z
    .locals 12

    .prologue
    const-wide v10, 0x4076800000000000L    # 360.0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    const-wide v0, 0x3fe999999999999aL    # 0.8

    const/4 v7, 0x1

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    .line 54
    iget-object v4, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    if-eqz v4, :cond_0

    .line 97
    :goto_0
    return v7

    .line 56
    :cond_0
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "pre_popup_bg"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    .line 57
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "v4vc_logo"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->b:Lcom/fusepowered/ac/ADCImage;

    .line 58
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "yes_button_normal"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    .line 59
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "yes_button_down"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->d:Lcom/fusepowered/ac/ADCImage;

    .line 60
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "no_button_normal"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->e:Lcom/fusepowered/ac/ADCImage;

    .line 61
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "no_button_down"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->f:Lcom/fusepowered/ac/ADCImage;

    .line 62
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "done_button_normal"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->h:Lcom/fusepowered/ac/ADCImage;

    .line 63
    new-instance v4, Lcom/fusepowered/ac/ADCImage;

    const-string v5, "done_button_down"

    invoke-static {v5}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fusepowered/ac/h;->g:Lcom/fusepowered/ac/ADCImage;

    .line 65
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 67
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 69
    if-le v4, v5, :cond_4

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v10

    .line 71
    :goto_1
    cmpg-double v6, v4, v0

    if-gez v6, :cond_1

    sget-boolean v6, Lcom/fusepowered/ac/a;->m:Z

    if-nez v6, :cond_1

    iput-boolean v7, p0, Lcom/fusepowered/ac/h;->n:Z

    .line 72
    :cond_1
    cmpl-double v6, v4, v2

    if-lez v6, :cond_7

    .line 73
    :goto_2
    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    sget-boolean v2, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v2, :cond_5

    .line 74
    :goto_3
    sput-wide v0, Lcom/fusepowered/ac/h;->o:D

    .line 76
    iget-boolean v2, p0, Lcom/fusepowered/ac/h;->n:Z

    if-eqz v2, :cond_2

    .line 78
    const-wide v2, 0x4004cccccccccccdL    # 2.6

    iput-wide v2, p0, Lcom/fusepowered/ac/h;->i:D

    .line 79
    iput-wide v8, p0, Lcom/fusepowered/ac/h;->j:D

    .line 80
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/fusepowered/ac/h;->k:D

    .line 81
    const-wide v2, 0x400199999999999aL    # 2.2

    iput-wide v2, p0, Lcom/fusepowered/ac/h;->l:D

    .line 82
    const-wide v2, 0x3ff3333333333333L    # 1.2

    iput-wide v2, p0, Lcom/fusepowered/ac/h;->m:D

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 86
    iget-object v2, p0, Lcom/fusepowered/ac/h;->b:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 87
    iget-object v2, p0, Lcom/fusepowered/ac/h;->d:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 88
    iget-object v2, p0, Lcom/fusepowered/ac/h;->f:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 89
    iget-object v2, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 90
    iget-object v2, p0, Lcom/fusepowered/ac/h;->e:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 91
    iget-object v2, p0, Lcom/fusepowered/ac/h;->g:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 92
    iget-object v2, p0, Lcom/fusepowered/ac/h;->h:Lcom/fusepowered/ac/ADCImage;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 93
    sget-object v2, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    mul-double/2addr v4, v0

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-boolean v2, p0, Lcom/fusepowered/ac/h;->n:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    :cond_3
    sget-object v0, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 69
    :cond_4
    sub-int v4, v5, v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    goto/16 :goto_1

    .line 73
    :cond_5
    const-wide v0, 0x3ffb333333333333L    # 1.7

    goto/16 :goto_3

    :cond_6
    move-wide v0, v2

    goto/16 :goto_3

    :cond_7
    move-wide v2, v4

    goto/16 :goto_2
.end method

.method a(IIII)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    if-ge p1, p3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-lt p2, p4, :cond_0

    .line 178
    iget-object v1, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->f:I

    add-int/2addr v1, p3

    if-ge p1, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->g:I

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method b(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 158
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 160
    sget-object v1, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    add-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    sget-object v3, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    sget-object v1, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    int-to-float v0, v0

    int-to-float v1, p3

    sget-object v2, Lcom/fusepowered/ac/h;->s:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method c()V
    .locals 10

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/fusepowered/ac/h;->n:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 232
    :goto_0
    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 234
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 236
    iget-object v4, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v4, v4, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fusepowered/ac/h;->w:I

    .line 237
    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x50

    iput v2, p0, Lcom/fusepowered/ac/h;->x:I

    .line 238
    iget v2, p0, Lcom/fusepowered/ac/h;->w:I

    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fusepowered/ac/h;->y:I

    .line 239
    iget v2, p0, Lcom/fusepowered/ac/h;->x:I

    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fusepowered/ac/h;->z:I

    .line 241
    iget v2, p0, Lcom/fusepowered/ac/h;->x:I

    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    int-to-double v6, v3

    sget-wide v8, Lcom/fusepowered/ac/h;->o:D

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fusepowered/ac/h;->C:I

    .line 242
    iget v2, p0, Lcom/fusepowered/ac/h;->w:I

    sget-wide v4, Lcom/fusepowered/ac/h;->o:D

    mul-double/2addr v4, v0

    double-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fusepowered/ac/h;->A:I

    .line 243
    iget v2, p0, Lcom/fusepowered/ac/h;->w:I

    iget-object v3, p0, Lcom/fusepowered/ac/h;->a:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    int-to-double v6, v3

    sget-wide v8, Lcom/fusepowered/ac/h;->o:D

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    sub-double v0, v4, v0

    double-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fusepowered/ac/h;->B:I

    .line 244
    return-void

    .line 231
    :cond_0
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    goto :goto_0
.end method

.method c(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->f:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 169
    iget-object v1, p0, Lcom/fusepowered/ac/h;->c:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 170
    invoke-virtual {p0}, Lcom/fusepowered/ac/h;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 171
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/fusepowered/ac/h;->b(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 172
    return-void
.end method
