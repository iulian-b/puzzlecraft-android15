.class Lcom/fusepowered/sa/android/publish/StartAppSDK$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/StartAppSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/fusepowered/sa/android/publish/StartAppSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;-><init>(Lcom/fusepowered/sa/android/publish/StartAppSDK$1;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppSDK$a;->a:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    return-void
.end method

.method static synthetic a()Lcom/fusepowered/sa/android/publish/StartAppSDK;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppSDK$a;->a:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    return-object v0
.end method
