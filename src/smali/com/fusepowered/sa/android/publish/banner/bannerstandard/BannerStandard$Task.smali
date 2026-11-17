.class Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;


# direct methods
.method private constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    new-instance v1, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$Task;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
