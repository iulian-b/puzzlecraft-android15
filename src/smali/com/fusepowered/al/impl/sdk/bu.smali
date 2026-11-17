.class Lcom/fusepowered/al/impl/sdk/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/al/impl/sdk/n;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/sdk/bt;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/sdk/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/bu;->a:Lcom/fusepowered/al/impl/sdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bu;->a:Lcom/fusepowered/al/impl/sdk/bt;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/bt;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report reward for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/bu;->a:Lcom/fusepowered/al/impl/sdk/bt;

    invoke-static {v3}, Lcom/fusepowered/al/impl/sdk/bt;->a(Lcom/fusepowered/al/impl/sdk/bt;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/bu;->a:Lcom/fusepowered/al/impl/sdk/bt;

    iget-object v0, v0, Lcom/fusepowered/al/impl/sdk/bt;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    const-string v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reported reward successfully for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/al/impl/sdk/bu;->a:Lcom/fusepowered/al/impl/sdk/bt;

    invoke-static {v3}, Lcom/fusepowered/al/impl/sdk/bt;->a(Lcom/fusepowered/al/impl/sdk/bt;)Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/al/impl/sdk/AppLovinAdInternal;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/al/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
