.class Lcom/fusepowered/sa/android/publish/StartAppSDK$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/StartAppSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/StartAppSDK;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/StartAppSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$2;->a:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$2;->a:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Lcom/fusepowered/sa/android/publish/StartAppSDK;Z)Z

    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$2;->a:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Lcom/fusepowered/sa/android/publish/StartAppSDK;Z)Z

    return-void
.end method
