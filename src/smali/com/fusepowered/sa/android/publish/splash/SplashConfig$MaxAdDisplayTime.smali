.class public final enum Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaxAdDisplayTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum FOR_EVER:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum LONG:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum SHORT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;


# instance fields
.field private index:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "SHORT"

    const-wide/16 v2, 0x1388

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "LONG"

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->LONG:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "FOR_EVER"

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->LONG:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->$VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->index:J

    return-void
.end method

.method public static getByIndex(J)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 6

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->getIndex()J

    move-result-wide v4

    cmp-long v3, v4, p0

    if-nez v3, :cond_0

    aget-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 5

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    aget-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->$VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method


# virtual methods
.method public getIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$MaxAdDisplayTime;->index:J

    return-wide v0
.end method
