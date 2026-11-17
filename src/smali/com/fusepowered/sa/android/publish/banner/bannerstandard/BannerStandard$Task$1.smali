.class Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "StartAppWall.BannerHtmlREFRESH"

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;->this$1:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$000(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V

    :cond_0
    return-void
.end method
