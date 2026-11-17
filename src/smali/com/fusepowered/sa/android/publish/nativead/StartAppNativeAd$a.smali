.class Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

.field private b:Lcom/fusepowered/sa/android/publish/AdEventListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 1

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    return-void
.end method


# virtual methods
.method public a()Lcom/fusepowered/sa/android/publish/AdEventListener;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    return-object v0
.end method

.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    const-string v2, "NativeAd Failed to load"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    const-string v2, "NativeAd Received"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$000(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$000(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$100(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$000(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/a/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$200(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;->access$100(Lcom/fusepowered/sa/android/publish/nativead/StartAppNativeAd;)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/fusepowered/sa/android/publish/nativead/NativeAdPreferences;

    goto :goto_0
.end method
