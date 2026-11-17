.class abstract Lcom/fusepowered/al/impl/sdk/br;
.super Lcom/fusepowered/al/impl/sdk/ay;

# interfaces
.implements Lcom/fusepowered/al/impl/sdk/n;


# instance fields
.field private a:I

.field private final b:Lcom/fusepowered/al/impl/sdk/n;

.field private c:Lcom/fusepowered/al/impl/sdk/bb;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/fusepowered/al/impl/sdk/ay;-><init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/br;->c:Lcom/fusepowered/al/impl/sdk/bb;

    iput p2, p0, Lcom/fusepowered/al/impl/sdk/br;->a:I

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bs;

    invoke-direct {v0, p0, p3, p1}, Lcom/fusepowered/al/impl/sdk/bs;-><init>(Lcom/fusepowered/al/impl/sdk/br;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/br;->b:Lcom/fusepowered/al/impl/sdk/n;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/bb;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->a(Lcom/fusepowered/al/impl/sdk/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/fusepowered/al/impl/sdk/br;-><init>(Ljava/lang/String;ILcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/br;)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/al/impl/sdk/br;->a:I

    return v0
.end method

.method static synthetic a(Lcom/fusepowered/al/impl/sdk/br;I)I
    .locals 0

    iput p1, p0, Lcom/fusepowered/al/impl/sdk/br;->a:I

    return p1
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/sdk/br;I)I
    .locals 1

    iget v0, p0, Lcom/fusepowered/al/impl/sdk/br;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/fusepowered/al/impl/sdk/br;->a:I

    return v0
.end method

.method static synthetic b(Lcom/fusepowered/al/impl/sdk/br;)V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/al/impl/sdk/br;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/br;->c:Lcom/fusepowered/al/impl/sdk/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/br;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/fusepowered/al/impl/sdk/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/br;->c:Lcom/fusepowered/al/impl/sdk/bb;

    iget-object v2, p0, Lcom/fusepowered/al/impl/sdk/br;->c:Lcom/fusepowered/al/impl/sdk/bb;

    invoke-virtual {v2}, Lcom/fusepowered/al/impl/sdk/bb;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/al/impl/sdk/bc;->a(Lcom/fusepowered/al/impl/sdk/bb;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/bc;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/fusepowered/al/impl/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/br;->c:Lcom/fusepowered/al/impl/sdk/bb;

    return-void
.end method

.method protected abstract a(Lcom/fusepowered/al/impl/sdk/m;Lcom/fusepowered/al/impl/sdk/n;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/br;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/fusepowered/al/impl/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/br;->b:Lcom/fusepowered/al/impl/sdk/n;

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/al/impl/sdk/br;->a(Lcom/fusepowered/al/impl/sdk/m;Lcom/fusepowered/al/impl/sdk/n;)V

    return-void
.end method
