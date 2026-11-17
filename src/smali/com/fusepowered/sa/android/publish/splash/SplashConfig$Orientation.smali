.class public final enum Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/splash/SplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

.field public static final enum AUTO:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

.field public static final enum LANDSCAPE:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

.field public static final enum PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    new-instance v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3, v5}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    new-array v0, v5, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->AUTO:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->$VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->index:I

    return-void
.end method

.method public static getByIndex(I)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
    .locals 4

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_0

    aget-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
    .locals 5

    sget-object v1, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->name()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->$VALUES:[Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/splash/SplashConfig$Orientation;->index:I

    return v0
.end method
