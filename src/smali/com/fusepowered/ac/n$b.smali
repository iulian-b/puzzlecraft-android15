.class Lcom/fusepowered/ac/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Lcom/fusepowered/ac/ADCData$g;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return v3

    .line 181
    :cond_0
    const-string v0, "replay"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->a:Ljava/lang/String;

    .line 182
    const-string v0, "card_shown"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->b:Ljava/lang/String;

    .line 183
    const-string v0, "html5_interaction"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->c:Ljava/lang/String;

    .line 184
    const-string v0, "cancel"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->d:Ljava/lang/String;

    .line 185
    const-string v0, "download"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->e:Ljava/lang/String;

    .line 186
    const-string v0, "skip"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->f:Ljava/lang/String;

    .line 187
    const-string v0, "info"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->g:Ljava/lang/String;

    .line 188
    const-string v0, "custom_event"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->h:Ljava/lang/String;

    .line 189
    const-string v0, "midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->i:Ljava/lang/String;

    .line 190
    const-string v0, "card_dissolved"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->j:Ljava/lang/String;

    .line 191
    const-string v0, "start"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->k:Ljava/lang/String;

    .line 192
    const-string v0, "third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->l:Ljava/lang/String;

    .line 193
    const-string v0, "complete"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->m:Ljava/lang/String;

    .line 194
    const-string v0, "continue"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->n:Ljava/lang/String;

    .line 195
    const-string v0, "in_video_engagement"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->o:Ljava/lang/String;

    .line 196
    const-string v0, "reward_v4vc"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->p:Ljava/lang/String;

    .line 197
    const-string v0, "first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->q:Ljava/lang/String;

    .line 200
    const-string v0, "video_expanded"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->r:Ljava/lang/String;

    .line 201
    const-string v0, "sound_mute"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->s:Ljava/lang/String;

    .line 202
    const-string v0, "sound_unmute"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->t:Ljava/lang/String;

    .line 203
    const-string v0, "video_paused"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->u:Ljava/lang/String;

    .line 204
    const-string v0, "video_resumed"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->v:Ljava/lang/String;

    .line 205
    const-string v0, "native_start"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->w:Ljava/lang/String;

    .line 206
    const-string v0, "native_first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->x:Ljava/lang/String;

    .line 207
    const-string v0, "native_midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->y:Ljava/lang/String;

    .line 208
    const-string v0, "native_third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->z:Ljava/lang/String;

    .line 209
    const-string v0, "native_complete"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->A:Ljava/lang/String;

    .line 210
    const-string v0, "native_overlay_click"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$b;->B:Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "replay"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "card_shown"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "cancel"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "download"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "skip"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "info"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "custom_event"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "midpoint"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "card_dissolved"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "start"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "third_quartile"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "complete"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "continue"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "in_video_engagement"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "reward_v4vc"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "first_quartile"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "video_expanded"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "sound_mute"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "sound_unmute"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_start"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_first_quartile"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_midpoint"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_third_quartile"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_complete"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "native_overlay_click"

    iget-object v2, p0, Lcom/fusepowered/ac/n$b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
