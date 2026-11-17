.class public final enum Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

.field public static final enum b:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

.field private static final synthetic c:[Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    const-string v1, "LAUNCH_APP"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    new-instance v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    const-string v1, "OPEN_MARKET"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->b:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    sget-object v1, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->b:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->c:[Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->c:[Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$b;

    return-object v0
.end method
