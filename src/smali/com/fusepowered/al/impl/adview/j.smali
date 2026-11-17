.class Lcom/fusepowered/al/impl/adview/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;


# direct methods
.method private constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/j;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;Lcom/fusepowered/al/impl/adview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/al/impl/adview/j;-><init>(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/al/impl/adview/j;->a:Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;->c(Lcom/fusepowered/al/impl/adview/AdViewControllerImpl;)Lcom/fusepowered/al/impl/adview/o;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/al/impl/adview/o;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
