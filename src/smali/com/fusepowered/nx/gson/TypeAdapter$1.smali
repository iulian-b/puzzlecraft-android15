.class Lcom/fusepowered/nx/gson/TypeAdapter$1;
.super Lcom/fusepowered/nx/gson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/gson/TypeAdapter;->nullSafe()Lcom/fusepowered/nx/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 186
    .local p0, "this":Lcom/fusepowered/nx/gson/TypeAdapter$1;, "Lcom/fusepowered/nx/gson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/fusepowered/nx/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/fusepowered/nx/gson/TypeAdapter$1;, "Lcom/fusepowered/nx/gson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->peek()Lcom/fusepowered/nx/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/gson/stream/JsonToken;->NULL:Lcom/fusepowered/nx/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->nextNull()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/gson/TypeAdapter;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/fusepowered/nx/gson/TypeAdapter$1;, "Lcom/fusepowered/nx/gson/TypeAdapter.1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/nx/gson/stream/JsonWriter;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/gson/TypeAdapter$1;->this$0:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/nx/gson/TypeAdapter;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
