.class Lcom/fusepowered/sa/android/publish/slider/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/slider/b;-><init>(Landroid/app/Activity;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/slider/b;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/slider/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/slider/b$1;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    const-string v0, "Slider"

    const/4 v1, 0x6

    const-string v2, "Error loading Slider"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    const-string v0, "Slider"

    const/4 v1, 0x3

    const-string v2, "Slider loaded"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$1;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->a(Lcom/fusepowered/sa/android/publish/slider/b;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/slider/b$1;->a:Lcom/fusepowered/sa/android/publish/slider/b;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/slider/b;->b(Lcom/fusepowered/sa/android/publish/slider/b;)V

    return-void
.end method
