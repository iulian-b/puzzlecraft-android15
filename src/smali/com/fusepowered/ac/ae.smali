.class Lcom/fusepowered/ac/ae;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/ae$b;,
        Lcom/fusepowered/ac/ae$a;
    }
.end annotation


# static fields
.field static at:[F


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Z

.field S:Landroid/graphics/Canvas;

.field T:Ljava/lang/String;

.field U:Ljava/lang/String;

.field V:Ljava/lang/String;

.field W:Ljava/lang/String;

.field Z:Lcom/fusepowered/ac/ab$b;

.field a:Landroid/webkit/WebView;

.field aA:F

.field aB:Landroid/graphics/Paint;

.field aC:Landroid/graphics/RectF;

.field aD:Lcom/fusepowered/ac/ae$b;

.field aE:Landroid/os/Handler;

.field aa:Landroid/graphics/Paint;

.field ab:Landroid/graphics/Paint;

.field ac:Landroid/graphics/Paint;

.field ad:Landroid/graphics/Paint;

.field ae:Landroid/graphics/Rect;

.field af:Lcom/fusepowered/ac/ADCImage;

.field ag:Lcom/fusepowered/ac/ADCImage;

.field ah:Lcom/fusepowered/ac/ADCImage;

.field ai:Lcom/fusepowered/ac/ADCImage;

.field aj:Lcom/fusepowered/ac/ADCImage;

.field ak:Lcom/fusepowered/ac/ADCImage;

.field al:Lcom/fusepowered/ac/ADCImage;

.field am:Lcom/fusepowered/ac/ADCImage;

.field an:Lcom/fusepowered/ac/ADCImage;

.field ao:Lcom/fusepowered/ac/ADCImage;

.field ap:[Lcom/fusepowered/ac/ADCImage;

.field aq:[Lcom/fusepowered/ac/ADCImage;

.field ar:Lcom/fusepowered/ac/m;

.field as:[Ljava/lang/String;

.field au:F

.field av:F

.field aw:F

.field ax:F

.field ay:F

.field az:F

.field b:Landroid/webkit/WebView;

.field c:Landroid/view/View;

.field d:Lcom/fusepowered/ac/ADCVideo;

.field e:D

.field f:D

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:J

.field w:J

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/fusepowered/ac/ae;->at:[F

    return-void
.end method

.method constructor <init>(Lcom/fusepowered/ac/ADCVideo;)V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    .line 37
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/fusepowered/ac/ae;->f:D

    .line 39
    const/16 v0, 0x63

    iput v0, p0, Lcom/fusepowered/ac/ae;->g:I

    .line 40
    iput v2, p0, Lcom/fusepowered/ac/ae;->h:I

    .line 58
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->x:Z

    .line 59
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->y:Z

    .line 60
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 61
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->A:Z

    .line 62
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->B:Z

    .line 63
    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->C:Z

    .line 83
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-object v0, v0, Lcom/fusepowered/ac/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->T:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aa:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ad:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ae:Landroid/graphics/Rect;

    .line 108
    new-array v0, v3, [Lcom/fusepowered/ac/ADCImage;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    .line 109
    new-array v0, v3, [Lcom/fusepowered/ac/ADCImage;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aC:Landroid/graphics/RectF;

    .line 558
    new-instance v0, Lcom/fusepowered/ac/ae$b;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ae$b;-><init>(Lcom/fusepowered/ac/ae;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aD:Lcom/fusepowered/ac/ae$b;

    .line 560
    new-instance v0, Lcom/fusepowered/ac/ae$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ae$2;-><init>(Lcom/fusepowered/ac/ae;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    .line 128
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->a:Lcom/fusepowered/ac/c;

    iget-boolean v0, v0, Lcom/fusepowered/ac/c;->s:Z

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    .line 129
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    sget-object v3, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v3, v3, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v3, v3, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    iget-boolean v3, v3, Lcom/fusepowered/ac/n$g;->a:Z

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    .line 132
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    sget-object v3, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-wide v4, v3, Lcom/fusepowered/ac/AdColonyAd;->n:D

    iput-wide v4, v0, Lcom/fusepowered/ac/AdColonyAd;->m:D

    .line 135
    :cond_0
    sget-boolean v0, Lcom/fusepowered/ac/a;->M:Z

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    .line 137
    sget-object v0, Lcom/fusepowered/ac/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/ac/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    .line 139
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$h;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-nez v0, :cond_10

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    .line 142
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_11

    .line 145
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "end_card_filepath"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    .line 146
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->f:I

    iput v0, p0, Lcom/fusepowered/ac/ae;->n:I

    .line 147
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget v0, v0, Lcom/fusepowered/ac/ADCImage;->g:I

    iput v0, p0, Lcom/fusepowered/ac/ae;->o:I

    .line 150
    iget v0, p0, Lcom/fusepowered/ac/ae;->n:I

    if-nez v0, :cond_3

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/fusepowered/ac/ae;->n:I

    .line 151
    :cond_3
    iget v0, p0, Lcom/fusepowered/ac/ae;->o:I

    if-nez v0, :cond_4

    const/16 v0, 0x140

    iput v0, p0, Lcom/fusepowered/ac/ae;->o:I

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "info_image_normal"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 155
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "download_image_normal"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 156
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "replay_image_normal"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v6

    .line 157
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "continue_image_normal"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v7

    .line 160
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "info_image_down"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v2

    .line 161
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "download_image_down"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v1

    .line 162
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "replay_image_down"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v6

    .line 163
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    new-instance v3, Lcom/fusepowered/ac/ADCImage;

    const-string v4, "continue_image_down"

    invoke-static {v4}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v0, v7

    .line 165
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    const-string v3, "Info"

    aput-object v3, v0, v2

    .line 166
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    const-string v3, "Download"

    aput-object v3, v0, v1

    .line 167
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    const-string v3, "Replay"

    aput-object v3, v0, v6

    .line 168
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    const-string v3, "Continue"

    aput-object v3, v0, v7

    .line 187
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v0, :cond_6

    .line 190
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "skip_video_image_normal"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    .line 191
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "skip_video_image_down"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ah:Lcom/fusepowered/ac/ADCImage;

    .line 192
    const-string v0, "skip_delay"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/ac/ae;->p:I

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    .line 198
    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    const/high16 v0, 0x40c00000    # 6.0f

    .line 199
    :cond_7
    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->R:Z

    .line 205
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->K:Z

    .line 206
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v0, v0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$g;->a:Z

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    .line 207
    :cond_9
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v0, :cond_e

    .line 210
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "engagement_image_normal"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    .line 211
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "engagement_image_down"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    .line 212
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v0, v0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v0, v0, Lcom/fusepowered/ac/n$g;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->W:Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v0, v0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v0, v0, Lcom/fusepowered/ac/n$g;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v0, v0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget-object v0, v0, Lcom/fusepowered/ac/n$g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->V:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    iget-object v0, v0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    iget v0, v0, Lcom/fusepowered/ac/n$g;->c:I

    iput v0, p0, Lcom/fusepowered/ac/ae;->r:I

    .line 216
    const-string v0, "engagement_delay"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->h(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/ac/ae;->q:I

    .line 217
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Learn More"

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->V:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/fusepowered/ac/ae;->F:Z

    .line 220
    :cond_b
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->F:Z

    if-eqz v0, :cond_c

    .line 222
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->b:Landroid/webkit/WebView;

    .line 223
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 226
    :cond_c
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    if-nez v0, :cond_e

    :cond_d
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->K:Z

    .line 229
    :cond_e
    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->e()V

    .line 232
    :cond_f
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aa:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 238
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ad:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ad:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_2
    return-void

    :cond_10
    move v0, v2

    .line 139
    goto/16 :goto_0

    .line 170
    :cond_11
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "reload_image_normal"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ak:Lcom/fusepowered/ac/ADCImage;

    .line 174
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "close_image_normal"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    .line 177
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "close_image_down"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->aj:Lcom/fusepowered/ac/ADCImage;

    .line 178
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "reload_image_down"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->al:Lcom/fusepowered/ac/ADCImage;

    .line 181
    new-instance v0, Lcom/fusepowered/ac/ADCImage;

    const-string v3, "browser_icon"

    invoke-static {v3}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fusepowered/ac/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ao:Lcom/fusepowered/ac/ADCImage;

    .line 183
    new-instance v0, Lcom/fusepowered/ac/ae$a;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/ac/ae$a;-><init>(Lcom/fusepowered/ac/ae;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->c:Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->b()V

    goto/16 :goto_1

    .line 247
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 765
    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 766
    :cond_1
    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 767
    :cond_2
    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 768
    :cond_3
    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_4

    iget v1, p0, Lcom/fusepowered/ac/ae;->g:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 769
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v1}, Lcom/fusepowered/ac/e;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->g:I

    if-gt p2, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0
.end method

.method public a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/high16 v12, 0x4084000000000000L    # 640.0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 791
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->b()Z

    move-result v6

    .line 792
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->x:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->x:Z

    .line 794
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_1

    .line 796
    iget v0, p0, Lcom/fusepowered/ac/ae;->s:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/ae;->s:I

    .line 798
    :cond_0
    if-eqz v6, :cond_1

    .line 800
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v7, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v7, v7, Lcom/fusepowered/ac/ADCVideo;->u:I

    const/16 v8, 0x11

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v7, v7, Lcom/fusepowered/ac/ADCVideo;->x:I

    iget-object v8, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v8, v8, Lcom/fusepowered/ac/ADCVideo;->y:I

    const/16 v9, 0x11

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->x:Z

    .line 806
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->x:Z

    if-eqz v0, :cond_9

    .line 808
    iput-boolean v14, p0, Lcom/fusepowered/ac/ae;->x:Z

    .line 811
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->y:Z

    if-eqz v0, :cond_4

    .line 813
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 814
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v7, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v7

    .line 815
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    .line 816
    mul-float/2addr v1, v1

    mul-float/2addr v7, v7

    add-float/2addr v1, v7

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 817
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, v7

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 818
    div-double/2addr v0, v8

    .line 820
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double v8, v0, v8

    cmpg-double v7, v8, v2

    if-gez v7, :cond_a

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/fusepowered/ac/ae;->f:D

    .line 821
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/fusepowered/ac/ae;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/fusepowered/ac/ae;->f:D

    .line 824
    :cond_2
    iget-wide v0, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v0, v10

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    const/high16 v0, 0x41900000    # 18.0f

    .line 825
    :goto_1
    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v2, v10

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_c

    const/high16 v1, 0x41900000    # 18.0f

    .line 826
    :goto_2
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 827
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ad:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 828
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 831
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_3

    .line 833
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ae;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(II)V

    .line 834
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ae;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(II)V

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->u:I

    if-le v0, v1, :cond_d

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->u:I

    .line 840
    :goto_3
    iput-boolean v14, p0, Lcom/fusepowered/ac/ae;->y:Z

    .line 843
    :cond_4
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_6

    .line 845
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v3, v3, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget v6, p0, Lcom/fusepowered/ac/ae;->m:I

    sub-int/2addr v3, v6

    const/16 v6, 0x11

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    cmpg-double v0, v0, v4

    if-gez v0, :cond_e

    move-wide v0, v4

    :goto_4
    iput-wide v0, p0, Lcom/fusepowered/ac/ae;->e:D

    .line 847
    invoke-static {}, Lcom/fusepowered/ac/AdColony;->isTablet()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/fusepowered/ac/ae;->e:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_6

    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, Lcom/fusepowered/ac/ae;->e:D

    .line 849
    :cond_6
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_7

    .line 852
    iget v0, p0, Lcom/fusepowered/ac/ae;->n:I

    iget v1, p0, Lcom/fusepowered/ac/ae;->o:I

    div-int/2addr v0, v1

    int-to-double v2, v0

    .line 853
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 854
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    iget-object v6, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v6, v6, Lcom/fusepowered/ac/ADCVideo;->u:I

    int-to-double v6, v6

    div-double/2addr v6, v4

    cmpl-double v0, v0, v6

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->u:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 857
    :goto_5
    iget-object v6, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, v6, Lcom/fusepowered/ac/ADCVideo;->x:I

    .line 858
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v2, Lcom/fusepowered/ac/ADCVideo;->y:I

    .line 861
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->u:I

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    :goto_6
    iput-wide v0, p0, Lcom/fusepowered/ac/ae;->e:D

    .line 864
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fusepowered/ac/ae;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->u:I

    int-to-double v2, v2

    iget v4, p0, Lcom/fusepowered/ac/ae;->o:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->u:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fusepowered/ac/ae;->o:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 866
    :goto_7
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 867
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCImage;->d(II)V

    .line 871
    :cond_7
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_8

    .line 873
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 877
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 878
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 879
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    invoke-virtual {v2, v3, v0}, Lcom/fusepowered/ac/ADCImage;->b(II)V

    .line 880
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    invoke-virtual {v0, v2, v1}, Lcom/fusepowered/ac/ADCImage;->b(II)V

    .line 886
    :cond_8
    :goto_8
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v0, :cond_9

    .line 888
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 889
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ah:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 894
    :cond_9
    return-void

    .line 820
    :cond_a
    const-wide v8, 0x4071800000000000L    # 280.0

    div-double/2addr v0, v8

    goto/16 :goto_0

    .line 824
    :cond_b
    iget-wide v0, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1

    .line 825
    :cond_c
    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    mul-double/2addr v2, v10

    double-to-float v1, v2

    goto/16 :goto_2

    .line 838
    :cond_d
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    goto/16 :goto_3

    .line 846
    :cond_e
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v12

    goto/16 :goto_4

    .line 854
    :cond_f
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    goto/16 :goto_5

    .line 861
    :cond_10
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->y:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x408e000000000000L    # 960.0

    div-double/2addr v0, v2

    goto/16 :goto_6

    .line 864
    :cond_11
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fusepowered/ac/ae;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto/16 :goto_7

    .line 882
    :cond_12
    iput-boolean v14, p0, Lcom/fusepowered/ac/ae;->K:Z

    goto :goto_8
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 468
    :try_start_0
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->B:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->B:Z

    .line 471
    packed-switch p1, :pswitch_data_0

    .line 536
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 540
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 541
    new-instance v1, Lcom/fusepowered/ac/ae$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ae$1;-><init>(Lcom/fusepowered/ac/ae;)V

    .line 548
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    :cond_1
    :goto_1
    return-void

    .line 475
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 476
    const-string v0, "info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v2, Lcom/fusepowered/ac/ag;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 477
    const-string v0, "info_url"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "INFO "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 480
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->B:Z

    goto :goto_1

    .line 486
    :cond_3
    :try_start_1
    sput-object v0, Lcom/fusepowered/ac/ACBActivity;->url:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const-class v3, Lcom/fusepowered/ac/ACBActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 494
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 495
    const-string v0, "download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ad_slot\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v2, v2, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v2, Lcom/fusepowered/ac/ag;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 496
    const-string v0, "download_url"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v2, "DOWNLOAD "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 499
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    :cond_5
    sput-object v0, Lcom/fusepowered/ac/ACBActivity;->url:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const-class v3, Lcom/fusepowered/ac/ACBActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 513
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 514
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->h()V

    .line 515
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    goto/16 :goto_0

    .line 522
    :pswitch_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 523
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->a()V

    .line 524
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->f()V

    goto/16 :goto_0

    .line 530
    :pswitch_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 531
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->g()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1172
    :cond_0
    if-eqz p1, :cond_1

    .line 1174
    const-string v0, "adc_bridge.fireChangeEvent({viewable:true});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_1
    const-string v0, "adc_bridge.fireChangeEvent({viewable:false});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/fusepowered/ac/ADCImage;II)Z
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v0

    iget v1, p1, Lcom/fusepowered/ac/ADCImage;->f:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v0

    iget v1, p1, Lcom/fusepowered/ac/ADCImage;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    if-ge p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-le p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    sget-object v1, Lcom/fusepowered/ac/ae;->at:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1339
    const/4 v1, 0x0

    .line 1340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1341
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/fusepowered/ac/ae;->at:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1342
    :cond_0
    float-to-int v0, v1

    return v0
.end method

.method b()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 903
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    .line 904
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 905
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 909
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 910
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 912
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 913
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 914
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/fusepowered/ac/ae$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ae$3;-><init>(Lcom/fusepowered/ac/ae;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 944
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    .line 947
    const-string v0, "hardware_acceleration_disabled"

    invoke-static {v0}, Lcom/fusepowered/ac/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_0
    :goto_0
    new-instance v0, Lcom/fusepowered/ac/m;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/ac/m;-><init>(Lcom/fusepowered/ac/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->ar:Lcom/fusepowered/ac/m;

    .line 964
    new-instance v0, Lcom/fusepowered/ac/ae$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/ae$4;-><init>(Lcom/fusepowered/ac/ae;)V

    .line 1043
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1046
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/a;->S:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/fusepowered/ac/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Injecting mraid"

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1048
    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1051
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "true"

    .line 1052
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var is_tablet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1054
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-eqz v0, :cond_4

    const-string v0, "tablet"

    .line 1057
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.adc_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/ac/a;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.os_version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/ac/a;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1059
    const-string v1, "adc_bridge.os_name=\'android\'"

    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adc_bridge.device_type=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1061
    const-string v0, "adc_bridge.fireChangeEvent({state:\'default\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1062
    const-string v0, "adc_bridge.fireReadyEvent()"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/ae;->a(Ljava/lang/String;)V

    .line 1066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1067
    :cond_2
    return-void

    .line 1051
    :cond_3
    const-string v0, "false"

    goto/16 :goto_1

    .line 1054
    :cond_4
    const-string v0, "phone"

    goto :goto_2

    .line 954
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 1392
    iput p1, p0, Lcom/fusepowered/ac/ae;->h:I

    .line 1393
    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->h:I

    .line 1394
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_0

    .line 1201
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 1084
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v1, Lcom/fusepowered/ac/ADCVideo;->e:Z

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/d;->a(ZLcom/fusepowered/ac/AdColonyAd;)V

    .line 1086
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->C:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fusepowered/ac/a;->P:Z

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1089
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1090
    new-instance v1, Lcom/fusepowered/ac/ae$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ae$5;-><init>(Lcom/fusepowered/ac/ae;)V

    .line 1104
    sget v2, Lcom/fusepowered/ac/a;->Q:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1108
    :cond_0
    sget-boolean v0, Lcom/fusepowered/ac/a;->N:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->f()V

    .line 1110
    :cond_1
    const-string v0, "card_shown"

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1112
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aD:Lcom/fusepowered/ac/ae$b;

    monitor-enter v1

    .line 1114
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    .line 1115
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v0, v0, Lcom/fusepowered/ac/n$h;->e:Z

    if-eqz v0, :cond_2

    .line 1117
    new-instance v0, Lcom/fusepowered/ac/ab$b;

    sget-object v2, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v2, v2, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v2, v2, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-wide v2, v2, Lcom/fusepowered/ac/n$h;->g:D

    invoke-direct {v0, v2, v3}, Lcom/fusepowered/ac/ab$b;-><init>(D)V

    iput-object v0, p0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    .line 1119
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_3

    .line 1124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1125
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1126
    new-instance v2, Lcom/fusepowered/ac/ae$6;

    invoke-direct {v2, p0, v1}, Lcom/fusepowered/ac/ae$6;-><init>(Lcom/fusepowered/ac/ae;Landroid/view/View;)V

    .line 1135
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1136
    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v3, v3, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1137
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1138
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->r:J

    .line 1141
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->e()V

    .line 1142
    return-void

    .line 1119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    sget-object v1, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1148
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Loading - end card url = "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/ac/a;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 1149
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    .line 1220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1221
    new-instance v1, Lcom/fusepowered/ac/ae$7;

    invoke-direct {v1, p0}, Lcom/fusepowered/ac/ae$7;-><init>(Lcom/fusepowered/ac/ae;)V

    .line 1228
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1230
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    .line 1231
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->a()V

    .line 1232
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    .line 1233
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->H:Z

    .line 1235
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    .line 1236
    return-void
.end method

.method f()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1243
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    sput-boolean v8, Lcom/fusepowered/ac/a;->D:Z

    .line 1248
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->s:J

    .line 1249
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->q:D

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v4, v1, Lcom/fusepowered/ac/ADCVideo;->s:J

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-wide v6, v1, Lcom/fusepowered/ac/ADCVideo;->r:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/fusepowered/ac/ADCVideo;->q:D

    .line 1250
    sput-boolean v8, Lcom/fusepowered/ac/a;->W:Z

    .line 1252
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1254
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->a()V

    .line 1252
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1257
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    .line 1259
    iput-object v9, p0, Lcom/fusepowered/ac/ae;->Z:Lcom/fusepowered/ac/ab$b;

    .line 1260
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1263
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1264
    iput-object v9, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    .line 1266
    :cond_4
    sget-object v0, Lcom/fusepowered/ac/a;->K:Lcom/fusepowered/ac/a$a;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/a$a;->a(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1267
    sput-boolean v8, Lcom/fusepowered/ac/ACBActivity;->A:Z

    goto :goto_0
.end method

.method g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1275
    sput-boolean v2, Lcom/fusepowered/ac/a;->D:Z

    .line 1277
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 1280
    new-instance v1, Lcom/fusepowered/ac/w;

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    check-cast v0, Lcom/fusepowered/ac/AdColonyV4VCAd;

    invoke-direct {v1, v2, v0}, Lcom/fusepowered/ac/w;-><init>(Lcom/fusepowered/ac/ADCVideo;Lcom/fusepowered/ac/AdColonyV4VCAd;)V

    sput-object v1, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    .line 1293
    :goto_0
    return-void

    .line 1284
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1286
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->a()V

    .line 1284
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1288
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->finish()V

    .line 1289
    sget-object v0, Lcom/fusepowered/ac/a;->K:Lcom/fusepowered/ac/a$a;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/a$a;->b(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1290
    sput-boolean v2, Lcom/fusepowered/ac/a;->W:Z

    .line 1291
    sput-boolean v2, Lcom/fusepowered/ac/ACBActivity;->A:Z

    goto :goto_0
.end method

.method h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1300
    const-string v0, "replay"

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1301
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->e:Z

    .line 1302
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sput-boolean v6, Lcom/fusepowered/ac/ADCVideo;->d:Z

    .line 1303
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sput v6, Lcom/fusepowered/ac/ADCVideo;->a:I

    .line 1304
    iput-boolean v6, p0, Lcom/fusepowered/ac/ae;->R:Z

    .line 1308
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1309
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1310
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v3, v3, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v4, v4, Lcom/fusepowered/ac/ADCVideo;->u:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1312
    new-instance v2, Lcom/fusepowered/ac/ae$8;

    invoke-direct {v2, p0, v0}, Lcom/fusepowered/ac/ae$8;-><init>(Lcom/fusepowered/ac/ae;Landroid/view/View;)V

    .line 1320
    const-wide/16 v4, 0x384

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1322
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->start()V

    .line 1323
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/d;->a(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 1324
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->requestFocus()Z

    .line 1325
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0, v6}, Lcom/fusepowered/ac/e;->setBackgroundColor(I)V

    .line 1326
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0, v6}, Lcom/fusepowered/ac/e;->setVisibility(I)V

    .line 1327
    invoke-virtual {p0, v6}, Lcom/fusepowered/ac/ae;->a(Z)V

    .line 1328
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 1352
    .line 1353
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/ac/ae$9;

    invoke-direct {v1, p0, p0}, Lcom/fusepowered/ac/ae$9;-><init>(Lcom/fusepowered/ac/ae;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1362
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1371
    iget v0, p0, Lcom/fusepowered/ac/ae;->h:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->D:Z

    if-nez v0, :cond_1

    .line 1374
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->D:Z

    .line 1375
    invoke-virtual {p0, v3}, Lcom/fusepowered/ac/ae;->b(Z)V

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->D:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fusepowered/ac/ae;->h:I

    if-nez v0, :cond_0

    .line 1380
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->D:Z

    .line 1381
    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/ae;->b(Z)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->c()V

    .line 1075
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->E:Z

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->a()V

    .line 260
    iput-object p1, p0, Lcom/fusepowered/ac/ae;->S:Landroid/graphics/Canvas;

    .line 263
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->N:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/fusepowered/ac/ae;->p:I

    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->N:Z

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->O:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/fusepowered/ac/ae;->q:I

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->O:Z

    .line 267
    :cond_3
    const/high16 v2, 0x431d0000    # 157.0f

    .line 272
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v0, :cond_a

    .line 274
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->z:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 275
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v3, v3, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    iget v4, v4, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 276
    const-wide v0, 0x4067400000000000L    # 186.0

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v1}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 277
    const-wide v4, 0x407d600000000000L    # 470.0

    iget-wide v6, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v3}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v3

    add-int/2addr v3, v0

    .line 279
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 282
    iget v4, p0, Lcom/fusepowered/ac/ae;->t:I

    add-int/lit8 v5, v0, 0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/fusepowered/ac/ae;->u:I

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->z:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/fusepowered/ac/ae;->u:I

    if-eqz v4, :cond_8

    .line 284
    :cond_4
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/fusepowered/ac/ae;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 285
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->aq:[Lcom/fusepowered/ac/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 286
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 298
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 300
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->as:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/fusepowered/ac/ADCImage;->f:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v6, v6, v0

    .line 301
    invoke-virtual {v6}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v6

    iget-object v7, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/fusepowered/ac/ADCImage;->g:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    .line 300
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 263
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 264
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 290
    :cond_8
    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->z:Z

    if-nez v4, :cond_9

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/fusepowered/ac/ae;->u:I

    if-eq v4, v5, :cond_5

    .line 292
    :cond_9
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v4, v4, v0

    iget-wide v6, p0, Lcom/fusepowered/ac/ae;->e:D

    invoke-virtual {v4, v6, v7}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 293
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ap:[Lcom/fusepowered/ac/ADCImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v1, v3}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 294
    int-to-double v4, v1

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    goto :goto_4

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_e

    .line 311
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 312
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aj:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 313
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ak:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 314
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->al:Lcom/fusepowered/ac/ADCImage;

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/ac/ADCImage;->a(D)V

    .line 316
    sget-boolean v0, Lcom/fusepowered/ac/a;->m:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/fusepowered/ac/ae;->i:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/fusepowered/ac/ae;->i:I

    :goto_5
    iput v0, p0, Lcom/fusepowered/ac/ae;->i:I

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->j:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->k:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/ae;->l:I

    .line 322
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->G:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/ae;->i:I

    iget v2, p0, Lcom/fusepowered/ac/ae;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 326
    :goto_6
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->H:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ak:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/ae;->k:I

    iget v2, p0, Lcom/fusepowered/ac/ae;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 330
    :goto_7
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->i()V

    goto/16 :goto_0

    .line 316
    :cond_b
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    iget v1, v1, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aj:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/ae;->i:I

    iget v2, p0, Lcom/fusepowered/ac/ae;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_6

    .line 327
    :cond_d
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->al:Lcom/fusepowered/ac/ADCImage;

    iget v1, p0, Lcom/fusepowered/ac/ae;->k:I

    iget v2, p0, Lcom/fusepowered/ac/ae;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto :goto_7

    .line 338
    :cond_e
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_14

    .line 340
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v1}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v1}, Lcom/fusepowered/ac/e;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v2, v3, v1}, Lcom/fusepowered/ac/d;->a(DLcom/fusepowered/ac/AdColonyAd;)V

    .line 345
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    invoke-virtual {v0}, Lcom/fusepowered/ac/e;->getCurrentPosition()I

    move-result v1

    .line 346
    iget v0, p0, Lcom/fusepowered/ac/ae;->s:I

    sub-int/2addr v0, v1

    .line 347
    add-int/lit16 v0, v0, 0x3e7

    div-int/lit16 v0, v0, 0x3e8

    .line 348
    iget-boolean v2, p0, Lcom/fusepowered/ac/ae;->R:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    move v6, v0

    .line 349
    :goto_8
    if-nez v6, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->R:Z

    .line 351
    :cond_f
    const/16 v0, 0x1f4

    if-lt v1, v0, :cond_13

    .line 354
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->A:Z

    if-eqz v0, :cond_10

    .line 356
    const-wide v2, 0x4076800000000000L    # 360.0

    iget v0, p0, Lcom/fusepowered/ac/ae;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    div-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/fusepowered/ac/ae;->av:F

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/ae;->A:Z

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const-string v3, "0123456789"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ac/ae;->ay:F

    .line 366
    :cond_10
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ac/ae;->aw:F

    .line 367
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ac/ae;->ax:F

    .line 370
    iget v0, p0, Lcom/fusepowered/ac/ae;->ay:F

    iput v0, p0, Lcom/fusepowered/ac/ae;->az:F

    .line 371
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->u:I

    int-to-float v0, v0

    iget v2, p0, Lcom/fusepowered/ac/ae;->ay:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/fusepowered/ac/ae;->m:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/fusepowered/ac/ae;->aA:F

    .line 372
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aC:Landroid/graphics/RectF;

    iget v2, p0, Lcom/fusepowered/ac/ae;->az:F

    iget v3, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fusepowered/ac/ae;->aA:F

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/fusepowered/ac/ae;->ay:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/fusepowered/ac/ae;->az:F

    const/high16 v5, 0x40000000    # 2.0f

    iget v7, p0, Lcom/fusepowered/ac/ae;->ay:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcom/fusepowered/ac/ae;->aA:F

    iget v7, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 375
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 376
    iget v0, p0, Lcom/fusepowered/ac/ae;->av:F

    float-to-double v2, v0

    iget v0, p0, Lcom/fusepowered/ac/ae;->s:I

    int-to-double v4, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    int-to-double v0, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/fusepowered/ac/ae;->au:F

    .line 377
    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aC:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v3, p0, Lcom/fusepowered/ac/ae;->au:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/ac/ae;->aB:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 380
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-nez v0, :cond_11

    .line 382
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 384
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 385
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aC:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->aC:Landroid/graphics/RectF;

    .line 387
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->ab:Landroid/graphics/Paint;

    .line 386
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    :cond_11
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->N:Z

    if-eqz v0, :cond_12

    .line 396
    iget v0, p0, Lcom/fusepowered/ac/ae;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_15

    .line 398
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ah:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ah:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 407
    :cond_12
    :goto_9
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->O:Z

    if-eqz v0, :cond_13

    .line 409
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->F:Z

    if-nez v0, :cond_13

    .line 411
    iget-boolean v0, p0, Lcom/fusepowered/ac/ae;->I:Z

    if-eqz v0, :cond_16

    .line 413
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/fusepowered/ac/ae;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCImage;->c(II)V

    .line 414
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->an:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;)V

    .line 423
    :goto_a
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 424
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->U:Ljava/lang/String;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCImage;->e:Landroid/graphics/Rect;

    .line 425
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v4, v4

    const-wide v6, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->ac:Landroid/graphics/Paint;

    .line 424
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    :cond_13
    sget-object v0, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    if-eqz v0, :cond_14

    .line 439
    sget-object v0, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/w;->onDraw(Landroid/graphics/Canvas;)V

    .line 442
    :cond_14
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v0, Lcom/fusepowered/ac/ADCVideo;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    goto/16 :goto_0

    .line 402
    :cond_15
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    iget-wide v2, p0, Lcom/fusepowered/ac/ae;->e:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_9

    .line 418
    :cond_16
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v1, v1, Lcom/fusepowered/ac/ADCVideo;->t:I

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget v2, v2, Lcom/fusepowered/ac/ADCImage;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v2, v2, Lcom/fusepowered/ac/ADCVideo;->u:I

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    iget v3, v3, Lcom/fusepowered/ac/ADCImage;->g:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/fusepowered/ac/ae;->m:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/fusepowered/ac/ae;->ay:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCImage;->c(II)V

    .line 419
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCImage;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    :cond_17
    move v6, v0

    goto/16 :goto_8
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->g()V

    .line 1209
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget v0, v0, Lcom/fusepowered/ac/ADCVideo;->u:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/fusepowered/ac/ae;->m:I

    .line 455
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/fusepowered/ac/ae;->m:I

    .line 456
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lcom/fusepowered/ac/ae;->m:I

    .line 457
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x28

    iput v0, p0, Lcom/fusepowered/ac/ae;->m:I

    .line 458
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const-wide/16 v10, 0xfa

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 581
    sget-object v0, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Lcom/fusepowered/ac/w;->H:Lcom/fusepowered/ac/w;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/w;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 753
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 594
    if-nez v4, :cond_6

    .line 597
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v4, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v4, :cond_3

    .line 600
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->G:Z

    .line 603
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 604
    goto :goto_0

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ak:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->H:Z

    .line 611
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 612
    goto :goto_0

    :cond_2
    move v0, v3

    .line 616
    goto :goto_0

    .line 620
    :cond_3
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v4, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v1}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v4}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 625
    iget v4, p0, Lcom/fusepowered/ac/ae;->t:I

    if-nez v4, :cond_4

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_4

    const/16 v4, 0x131

    if-ge v0, v4, :cond_4

    .line 627
    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ac/ae;->a(II)I

    move-result v4

    .line 628
    iput v4, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 629
    iput v4, p0, Lcom/fusepowered/ac/ae;->u:I

    .line 630
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 631
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    .line 636
    :cond_4
    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->N:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v4, v4, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 638
    const/16 v0, 0xa

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 639
    iget v0, p0, Lcom/fusepowered/ac/ae;->t:I

    iput v0, p0, Lcom/fusepowered/ac/ae;->u:I

    .line 640
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 641
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 642
    goto/16 :goto_0

    .line 646
    :cond_5
    iget-boolean v3, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/fusepowered/ac/ae;->O:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v3, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 648
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->I:Z

    .line 649
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 650
    goto/16 :goto_0

    .line 657
    :cond_6
    if-ne v4, v2, :cond_10

    .line 660
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v4, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v4, :cond_a

    .line 663
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ai:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->G:Z

    if-eqz v4, :cond_8

    .line 665
    const/4 v0, 0x4

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 666
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 667
    :cond_7
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget v3, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 668
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 669
    goto/16 :goto_0

    .line 673
    :cond_8
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ak:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->H:Z

    if-eqz v4, :cond_a

    .line 675
    iput v5, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 676
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 677
    :cond_9
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget v3, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 678
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 679
    goto/16 :goto_0

    .line 684
    :cond_a
    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    sget-boolean v4, Lcom/fusepowered/ac/ADCVideo;->d:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->M:Z

    if-eqz v4, :cond_b

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v1}, Lcom/fusepowered/ac/ADCImage;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-wide v4, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    double-to-int v1, v0

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->af:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {v4}, Lcom/fusepowered/ac/ADCImage;->c()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/fusepowered/ac/ae;->e:D

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 688
    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->z:Z

    if-nez v4, :cond_b

    const/16 v4, 0xeb

    if-lt v0, v4, :cond_b

    const/16 v4, 0x131

    if-ge v0, v4, :cond_b

    .line 690
    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/ac/ae;->a(II)I

    move-result v4

    .line 691
    if-lez v4, :cond_b

    iget v5, p0, Lcom/fusepowered/ac/ae;->u:I

    if-ne v4, v5, :cond_b

    .line 693
    iget-object v5, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget-object v6, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    .line 694
    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 693
    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 700
    :cond_b
    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->L:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->N:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v4, v4, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->ag:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 702
    const/16 v0, 0xa

    iput v0, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 703
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 704
    iget v0, p0, Lcom/fusepowered/ac/ae;->t:I

    iput v0, p0, Lcom/fusepowered/ac/ae;->u:I

    .line 705
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/ae;->aE:Landroid/os/Handler;

    iget v3, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 706
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 705
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v2

    .line 707
    goto/16 :goto_0

    .line 711
    :cond_c
    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->K:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/fusepowered/ac/ae;->O:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->am:Lcom/fusepowered/ac/ADCImage;

    invoke-virtual {p0, v4, v1, v0}, Lcom/fusepowered/ac/ae;->a(Lcom/fusepowered/ac/ADCImage;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 713
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->I:Z

    .line 716
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->W:Ljava/lang/String;

    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/fusepowered/ac/ae;->W:Ljava/lang/String;

    const-string v1, "amzn:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 718
    :cond_d
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/fusepowered/ac/ae;->W:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    .line 725
    :goto_1
    const-string v0, "in_video_engagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v3, v3, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v3, v3, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v3, v3, Lcom/fusepowered/ac/ag;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v3, v3, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1, v3}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    move v0, v2

    .line 726
    goto/16 :goto_0

    .line 722
    :cond_e
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->W:Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/ac/ACBActivity;->url:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const-class v4, Lcom/fusepowered/ac/ACBActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 730
    :cond_f
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->G:Z

    .line 731
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->H:Z

    .line 732
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->I:Z

    .line 733
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 734
    iput v3, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 735
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 736
    goto/16 :goto_0

    .line 742
    :cond_10
    if-ne v4, v5, :cond_11

    .line 745
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->G:Z

    .line 746
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->H:Z

    .line 747
    iput-boolean v3, p0, Lcom/fusepowered/ac/ae;->I:Z

    .line 748
    iput-boolean v2, p0, Lcom/fusepowered/ac/ae;->z:Z

    .line 749
    iput v3, p0, Lcom/fusepowered/ac/ae;->t:I

    .line 750
    invoke-virtual {p0}, Lcom/fusepowered/ac/ae;->invalidate()V

    move v0, v2

    .line 751
    goto/16 :goto_0

    :cond_11
    move v0, v2

    .line 753
    goto/16 :goto_0
.end method
