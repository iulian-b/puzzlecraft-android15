.class public Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/splash/SplashConfig$1;,
        Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;,
        Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;,
        Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;,
        Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_LOAD:J = 0x0L

.field private static final INT_EMPTY_VALUE:I = -0x1

.field private static final STRING_EMPTY_VALUE:Ljava/lang/String; = ""

.field private static final VALUE_DEFAULT_MAXADDISPLAY:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field private static final VALUE_DEFAULT_MAXLOAD:J

.field private static final VALUE_DEFAULT_MINSPLASHTIME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

.field private static final VALUE_DEFAULT_ORIENTATION:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

.field private static final VALUE_DEFAULT_THEME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

.field private static final serialVersionUID:J = 0x3086a9d443000ee3L


# instance fields
.field private appName:Ljava/lang/String;

.field private customScreen:I

.field private defaultMaxAdDisplayTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field private defaultMaxLoadTime:Ljava/lang/Long;

.field private defaultMinSplashTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

.field private defaultOrientation:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

.field private defaultTheme:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

.field private transient errMsg:Ljava/lang/String;

.field private transient logo:Landroid/graphics/drawable/Drawable;

.field private logoRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1d4c

    sput-wide v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->DEFAULT_MAX_LOAD:J

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;->OCEAN:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;->REGULAR:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    sget-wide v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->DEFAULT_MAX_LOAD:J

    sput-wide v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->customScreen:I

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logoRes:I

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultTheme:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    sget-wide v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private static applyDefaultSplashConfig(Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)V
    .locals 4

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getDefaultSplashConfig()Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setTheme(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_4
    return-void
.end method

.method public static getDefaultSplashConfig()Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 4

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;-><init>()V

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setTheme(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-wide v2, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v1, v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    return-object v0
.end method

.method private setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private setLogo(Landroid/graphics/drawable/Drawable;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomScreen()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->customScreen:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p0}, Lcom/fusepowered/sa/android/publish/splash/b;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getCustomScreen()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "StartApp: Can\'t find Custom layout resource"

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/view/InflateException;

    const-string v1, "StartApp: Can\'t inflate layout in Custom mode, Are you sure layout resource is valid?"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getLogoResource()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logoRes:I

    return v0
.end method

.method public getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method

.method protected getMaxLoadAdTimeout()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    return-object v0
.end method

.method public getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-object v0
.end method

.method protected getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultTheme:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomScreen(I)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->customScreen:I

    return-object p0
.end method

.method public setDefaults(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getInstance()Lcom/fusepowered/sa/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/model/MetaData;->getSplashConfig()Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getDefaultSplashConfig()Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->applyDefaultSplashConfig(Lcom/fusepowered/sa/android/publish/splash/SplashConfig;)V

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getMinSplashTime()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setMinSplashTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getOrientation()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_4
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setTheme(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_5
    return-void
.end method

.method public setLogo(I)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->logoRes:I

    return-object p0
.end method

.method public setMaxAdDisplayTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-object p0
.end method

.method protected setMaxLoadAdTimeout(J)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setMinSplashTime(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultMinSplashTime:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MinSplashTime;

    return-object p0
.end method

.method public setOrientation(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultOrientation:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-object p0
.end method

.method public setTheme(Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->defaultTheme:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    return-object p0
.end method

.method protected validate(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getTheme()Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Theme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Welcome!"

    invoke-static {p1, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getLogoResource()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getCustomScreen()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    const-string v1, "StartApp: Exception getting custom screen resource id, make sure it is set"

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
