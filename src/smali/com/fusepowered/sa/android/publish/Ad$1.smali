.class Lcom/fusepowered/sa/android/publish/Ad$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/AdEventListener;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/Ad;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad$1;->b:Lcom/fusepowered/sa/android/publish/Ad;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/Ad$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad$1;->b:Lcom/fusepowered/sa/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    return-void
.end method
