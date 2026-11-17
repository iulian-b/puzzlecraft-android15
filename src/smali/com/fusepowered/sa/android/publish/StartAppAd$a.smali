.class Lcom/fusepowered/sa/android/publish/StartAppAd$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/StartAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/StartAppAd;

.field private b:Z

.field private c:Lcom/fusepowered/sa/android/publish/AdEventListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/fusepowered/sa/android/publish/StartAppAd;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->c:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iput-boolean v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->d:Z

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->c:Lcom/fusepowered/sa/android/publish/AdEventListener;

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->c:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->d:Z

    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->b:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->c:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppAd$a;->a:Lcom/fusepowered/sa/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method
