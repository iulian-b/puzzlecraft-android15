.class public Lcom/fusepowered/ads/OrientationProvider;
.super Ljava/lang/Object;
.source "OrientationProvider.java"


# static fields
.field public static final LANDSCAPE:I = 0x0

.field public static final PORTRAIT:I = 0x1


# instance fields
.field private final displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 21
    return-void
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isLandscape()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 31
    iget-object v1, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/fusepowered/ads/OrientationProvider;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
