.class Lcom/fusepowered/sa/android/publish/Ad$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/Ad;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/AdEventListener;

.field final synthetic c:Lcom/fusepowered/sa/android/publish/Ad;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/Ad;Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->c:Lcom/fusepowered/sa/android/publish/Ad;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->a:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoadingMeta()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->c:Lcom/fusepowered/sa/android/publish/Ad;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->a:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/Ad;->loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method

.method public onFinishLoadingMeta()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->c:Lcom/fusepowered/sa/android/publish/Ad;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->a:Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/Ad$2;->b:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/Ad;->loadAds(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)V

    return-void
.end method
