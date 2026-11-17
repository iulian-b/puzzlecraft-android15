.class public Lcom/fusepowered/sa/android/publish/banner/BannerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;
    }
.end annotation


# static fields
.field private static final a:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

.field private static final serialVersionUID:J = 0x2837313f23b2c694L


# instance fields
.field private adsNumber:I

.field private delayFaceTime:I

.field private effect:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

.field private height:I

.field private heightRatio:F

.field private htmlAdsNumber:I

.field private minScale:F

.field private probability3D:I

.field private refreshRate:I

.field private rotateThroughOnStart:Z

.field private rotateThroughSpeedMult:I

.field private scalePower:I

.field private stepSize:I

.field private timeBetweenFrames:I

.field private width:I

.field private widthRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->width:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->height:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->probability3D:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    iput v2, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->stepSize:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->delayFaceTime:I

    iput v3, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->adsNumber:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->widthRatio:F

    iput v1, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->heightRatio:F

    const v0, 0x3f6147ae    # 0.88f

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->minScale:F

    iput v3, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->scalePower:I

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->effect:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    iput v2, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->refreshRate:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->timeBetweenFrames:I

    return v0
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->width:I

    iput p2, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->height:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->stepSize:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->delayFaceTime:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->width:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->height:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    check-cast p1, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->f()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->h()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->i()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->adsNumber:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->htmlAdsNumber:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->refreshRate:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->probability3D:I

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->widthRatio:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->heightRatio:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->minScale:F

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->scalePower:I

    return v0
.end method

.method public n()Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->effect:Lcom/fusepowered/sa/android/publish/banner/BannerOptions$Effect;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->rotateThroughOnStart:Z

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->rotateThroughSpeedMult:I

    return v0
.end method
