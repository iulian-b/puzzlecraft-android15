.class Lcom/fusepowered/sa/android/publish/splash/a$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/splash/a$3;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/splash/a$3;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/splash/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$2;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/splash/a$3$2;->a:Lcom/fusepowered/sa/android/publish/splash/a$3;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/splash/a$3;->a:Lcom/fusepowered/sa/android/publish/splash/a;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/splash/a;->d(Lcom/fusepowered/sa/android/publish/splash/a;)V

    return-void
.end method
