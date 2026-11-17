.class Lcom/fusepowered/sa/android/publish/banner/Banner$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/banner/Banner;->init_step2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/banner/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$100(Lcom/fusepowered/sa/android/publish/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$200(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->i()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    sget-object v3, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->REGULAR:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$302(Lcom/fusepowered/sa/android/publish/banner/Banner;Lcom/fusepowered/sa/android/publish/banner/Banner$BType;)Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    sget-object v3, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->THREED:Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    invoke-static {v2, v3}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$302(Lcom/fusepowered/sa/android/publish/banner/Banner;Lcom/fusepowered/sa/android/publish/banner/Banner$BType;)Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartAppWall.BannerProbability ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/Banner$3;->$SwitchMap$com$startapp$android$publish$banner$Banner$BType:[I

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$300(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/Banner$BType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/Banner$BType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$102(Lcom/fusepowered/sa/android/publish/banner/Banner;Z)Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$600(Lcom/fusepowered/sa/android/publish/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->showBanner()V

    :cond_2
    return-void

    :pswitch_0
    const-string v0, "StartAppWall.BannerDisplaying REGULAR"

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$400(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->hideBanner()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$500(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->load()V

    goto :goto_0

    :pswitch_1
    const-string v0, "StartAppWall.BannerDisplaying 3D"

    invoke-static {v4, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$500(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->hideBanner()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$100(Lcom/fusepowered/sa/android/publish/banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$400(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->load()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/Banner$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/Banner;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/Banner;->access$400(Lcom/fusepowered/sa/android/publish/banner/Banner;)Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->showBanner()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
