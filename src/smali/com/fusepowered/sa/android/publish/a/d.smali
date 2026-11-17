.class public abstract Lcom/fusepowered/sa/android/publish/a/d;
.super Lcom/fusepowered/sa/android/publish/Ad;


# static fields
.field protected static launcherName:Ljava/lang/String;


# instance fields
.field private adId:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private html:Ljava/lang/String;

.field public smartRedirect:[Z

.field public trackingUrl:[Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/sa/android/publish/a/d;->launcherName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/Ad;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->html:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->adId:Ljava/lang/String;

    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/d;->launcherName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/a/d;->initDefaultLauncherName()V

    :cond_0
    return-void
.end method

.method private initDefaultLauncherName()V
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/o;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/sa/android/publish/a/d;->launcherName:Ljava/lang/String;

    return-void
.end method

.method private setAdInfoEnableOverride(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/d;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/adinformation/b;->a(Z)V

    return-void
.end method

.method private setAdInfoPositionOverrid(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/d;->getAdInfoOverride()Lcom/fusepowered/sa/android/publish/adinformation/b;

    move-result-object v0

    invoke-static {p1}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/adinformation/b;->a(Lcom/fusepowered/sa/android/publish/adinformation/AdInformationPositions$Position;)V

    return-void
.end method

.method private setSmartRedirect(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    aput-boolean v1, v3, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setTrackingUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->height:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->html:Ljava/lang/String;

    return-object v0
.end method

.method protected getLauncherName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/a/d;->launcherName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacement()Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-object v0
.end method

.method public getSmartRedirect(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public getSmartRedirect()[Z
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    return-object v0
.end method

.method public getTrackingUrls(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getTrackingUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->width:I

    return v0
.end method

.method public gtAdId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->adId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/a/d;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@adId@"

    const-string v2, "@adId@"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->adId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/sa/android/publish/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a/d;->apps:Ljava/util/List;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/a/d;->height:I

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a/d;->html:Ljava/lang/String;

    const-string v0, "@smartRedirect@"

    const-string v2, "@smartRedirect@"

    invoke-static {p1, v0, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/a/d;->setSmartRedirect(Ljava/lang/String;)V

    :cond_0
    const-string v0, "@tracking@"

    const-string v2, "@tracking@"

    invoke-static {p1, v0, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/a/d;->setTrackingUrl(Ljava/lang/String;)V

    :cond_1
    const-string v0, "@adInfoEnable@"

    const-string v2, "@adInfoEnable@"

    invoke-static {p1, v0, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/a/d;->setAdInfoEnableOverride(Ljava/lang/String;)V

    :cond_2
    const-string v0, "@adInfoPosition@"

    const-string v2, "@adInfoPosition@"

    invoke-static {p1, v0, v2}, Lcom/fusepowered/sa/android/publish/f/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/fusepowered/sa/android/publish/a/d;->setAdInfoPositionOverrid(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    array-length v0, v0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    const/4 v0, 0x6

    const-string v2, "Error in smartRedirect array in HTML"

    invoke-static {v0, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/a/d;->trackingUrl:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-object v2, p0, Lcom/fusepowered/sa/android/publish/a/d;->smartRedirect:[Z

    :cond_6
    return-void
.end method

.method public setPlacement(Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a/d;->placement:Lcom/fusepowered/sa/android/publish/model/AdPreferences$Placement;

    return-void
.end method

.method public setSize(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/a/d;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/fusepowered/sa/android/publish/a/d;->setHeight(I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/a/d;->width:I

    return-void
.end method
